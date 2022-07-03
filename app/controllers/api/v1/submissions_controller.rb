module Api
  module V1
    # Submission controller that perform the following actions:
    class SubmissionsController < ApplicationController
      before_action :find_developer, only: %i[index create]
      before_action :find_submission, only: :show

      def index
        submissions = @developer.submissions
        render json: submissions, each_serializer: Api::V1::SubmissionSerializer, status: :ok
      end

      def show
        render json: @submission, serializer: Api::V1::SubmissionSerializer, status: :ok
      end

      def create; end

      private

      def find_developer
        @developer = Developer.find_by(id: params[:developer_id])
        return render json: { error: 'No developer found' }, status: :not_found if @developer.blank?
      end

      def find_submission
        @submission = Submission.find_by(id: params[:id])
        return render json: { error: 'No submissions found' }, status: :not_found if @submission.blank?
      end
    end
  end
end
