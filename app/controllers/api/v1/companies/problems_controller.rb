module Api
  module V1
    module Companies
      # Comopanies problem controller
      class ProblemsController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :find_company, only: :index

        def index
          problems = @company.problems
          render json: problems, each_serializer: Api::V1::Companies::ProblemSerializer, status: :ok
        end

        def create
          problem = Problem.new(problem_params)
          if problem.save
            render json: problem, serializer: Api::V1::Companies::ProblemSerializer, status: :created
          else
            render json: { error: problem.errors.full_message }, status: :unprocessable_entity
          end
        end

        private

        def problem_params
          params.require(:problem).permit(
            :title, :body, :difficullty, :input, :output,
            :input_description, :output_description, :notes, :score,
            :memory_limit, :time_limit, :company_id, :contest_id, :topic_id
          )
        end

        def find_company
          @company = Company.find_by(id: params[:company_id])
          return render json: { errors: 'Company not found' }, status: :not_found if @company.blank?
        end
      end
    end
  end
end
