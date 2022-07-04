module Api
  module V1
    module Companies
      class SessionsController < Devise::SessionsController
        skip_before_action :verify_authenticity_token
        respond_to :json

        private

        def respond_with(resource, _opts = {})
          render json: { message: 'Logged in successfully', token: current_token }, status: :ok
        end

        def respond_to_on_destroy
          log_out_success && return if current_company

          log_out_failure
        end

        def log_out_success
          render json: { message: 'Logged out successfully' }, status: :ok
        end

        def log_out_failure
          render json: { message: 'Unexpected error' }, status: :unauthorized
        end

        def current_token
          request.env['warden-jwt_auth.token']
        end
      end
    end
  end
end
