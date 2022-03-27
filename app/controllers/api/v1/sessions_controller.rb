module Api
  module V1
    # This controller is to manage our application sessions
    class SessionsController < BaseController
      skip_before_action :verify_authenticity_token

      def create
        user = User.find_by(email: params[:email])
        if user&.valid_password?(params[:password])
          render json: { message: 'Loged in successfully' }, status: :ok
        else
          render json: { message: 'Wrong email or password' }, status: :unauthorized
        end
      end

      def destroy; end

      private

      def user_parasm
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
