module Api
  module V1
    module Companies
      # Comopanies problem controller
      class ProblemsController < ApplicationController
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
            :input_description, :output_description, :notes,
            :memory_limit, :time_limit, :company_id, :contest_id, :topic_id
          )
        end
      end
    end
  end
end
