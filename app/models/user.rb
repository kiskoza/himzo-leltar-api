# frozen_string_literal: true

class User < ApplicationRecord
  def self.create_from_authsch(params)
    where(authsch_id: params[:internal_id]).first_or_initialize.tap do |user|
      user.name = params[:displayName]
      user.status = (params[:eduPersonEntitlement].find { |group| group[:name] == 'Pulcsi és Foltmékör' && group[:end].nil? } || {})[:status]
      user.token = SecureRandom.uuid
      user.save
    end
  end
end
