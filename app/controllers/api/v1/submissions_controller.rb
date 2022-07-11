module Api
  module V1
    # Submission controller that perform the following actions:
    class SubmissionsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :find_developer, only: %i[index create]
      before_action :find_problem, only: :create
      before_action :find_programming_language, only: :create
      before_action :find_submission, only: :show

      def index
        submissions = @developer.submissions
        render json: submissions, each_serializer: Api::V1::SubmissionSerializer, status: :ok
      end

      def show
        render json: @submission, serializer: Api::V1::SubmissionSerializer, status: :ok
      end

      def create
        create_submission_result = Judge::Submissions::CreateSubmission.new(submission_params, @problem, @programming_languge).create
        puts "create_submission_result - #{create_submission_result}"
        puts "submission PL - #{create_submission_result[1].programming_languge}"
        if create_submission_result[0]
          render json: create_submission_result[1], serializer: Api::V1::SubmissionSerializer, status: :created
        else
          render json: { errors: create_submission_result[1].errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def submission_params
        params.require(:submission).permit(:input, :source_code, :developer_id, :problem_id, :programming_languges_id)
      end

      def find_developer
        @developer = Developer.find_by(id: params[:developer_id])
        return render json: { error: 'No developer found' }, status: :not_found if @developer.blank?
      end

      def find_submission
        @submission = Submission.find_by(id: params[:id])
        return render json: { error: 'No submissions found' }, status: :not_found if @submission.blank?
      end

      def find_problem
        @problem = Problem.find_by(id: params[:problem_id])
        return render json: { error: 'No problem found' }, status: :not_found if @problem.blank?
      end

      def find_programming_language
        # TODO: Check the correct params is being sent
        # code smell => make sure to send programming_languges_id not programming_languge_id
        @programming_languge = ProgrammingLanguge.find_by(id: params[:programming_languges_id])
        return render json: { errors: 'No programming language found' }, status: :not_found if @programming_languge.blank?
      end
    end
  end
end
