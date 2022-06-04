module Api
  module V1
    module Companies
      class SessionsController < Devise::SessionsController
        respond_to :json

        private

        def respond_with(resource, _opts = {})
          render json: { message: 'Logged in successfully' }, status: :ok
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
      end
    end
  end
end
