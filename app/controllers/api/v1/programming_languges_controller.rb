module Api
  module V1
    # Programming Languges controller to perform the following actions
    class ProgrammingLangugesController < ApplicationController
      before_action :find_programing_language, only: :show

      def index
        programming_languages = ProgrammingLanguge.all
        render json: programming_languages, each_serializer: Api::V1::ProgrammingLangugeSerializer, status: :ok
      end

      def show
        render json: @programming_language, serializer: Api::V1::ProgrammingLangugeSerializer, status: :ok
      end

      private

      def find_programing_language
        @programming_language = ProgrammingLanguge.find_by(id: params[:id])

        render json: { error: 'Programming languge not found' }, status: :not_found if @programming_language.blank?
      end
    end
  end
end
