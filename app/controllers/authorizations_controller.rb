# frozen_string_literal: true

class AuthorizationsController < ApplicationController
  def create
    code = params[:code]

    conn = Faraday.new(url: 'https://auth.sch.bme.hu')
    conn.basic_auth(AUTHSCH_CLIENT, AUTHSCH_KEY)

    token_response = conn.post('/oauth2/token') do |req|
      req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
      req.body = URI.encode_www_form(
        grant_type: 'authorization_code',
        code: code
      )
    end

    token = JSON.parse(token_response.body)['access_token']

    conn = Faraday.new(url: 'https://auth.sch.bme.hu')
    user_params = conn.get('/api/profile/') do |req|
      req.params = {
        access_token: token
      }
    end

    user = User.create_from_authsch(JSON.parse(user_params.body).deep_symbolize_keys)

    render json: JSON.parse(user_params.body)
  end
end
