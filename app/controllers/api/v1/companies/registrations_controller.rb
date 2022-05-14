module Api
  module V1
    module Companies
      class RegistrationsController < Devise::RegistrationsController
        respond_to :json

        private

        def respond_with(resource, _opts = {})
          register_success && return if resource.persisted?

          register_failed
        end

        def register_success
          render json: { message: 'Signed up successfully.' }, status: :ok
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
