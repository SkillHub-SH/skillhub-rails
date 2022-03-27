class Api::V1::SessionsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def create
    render json: { welcome_message: 'Hello motherfucker!' }, status: :ok
  end

  def destroy; end
end
