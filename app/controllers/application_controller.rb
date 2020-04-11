class ApplicationController < ActionController::API
  before_action :authenticate_user!

  private

  def authenticate_user!
    authsch = auth_params[:authsch].presence
    user = authsch && User.find_by(authsch_id: authsch)

    # TODO: use secure compare
    if user && user.token == auth_params[:token]
      @current_user = user
    else
      api_error(status: 403, errors: 'Unautheticated')
    end
  end

  def api_error(status: 500, errors: [])
    render json: { errors: errors }, status: status
  end

  def auth_params
    params.require(:auth).permit(:authsch, :token)
  end
end
