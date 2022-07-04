module Api
  module V1
    module Companies
      class RegistrationsController < Devise::RegistrationsController
        skip_before_action :verify_authenticity_token
        before_action :configure_permitted_parameters, only: :create
        respond_to :json

        private

        def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :password])
        end

        def respond_with(resource, _opts = {})
          register_success && return if resource.persisted?

          register_failed
        end

        def register_success
          render json: { message: 'Signed up successfully.' }, status: :created
        end

        def register_failed
          # handle the response code later to return # 200 with what's went wrong
          # with the registration
          render json: { message: 'Unexpected error' }, status: :conflict
        end
      end
    end
  end
end
