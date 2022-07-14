module Api
  module V1
    module Companies
      class ContestsController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :find_company, only: :index
        before_action :find_contest, only: :show

        def index
          contests = @company.contests
          render json: contests, each_serializer: Api::V1::Companies::ContestSerializer, status: :ok
        end

        def create
          contest = Contest.new(contest_params)
          if contest.save
            render json: contest, serializer: Api::V1::Companies::ContestSerializer, status: :created
          else
            render json: { error: contest.errors.full_messages }, status: :unprocessable_entity
          end
        end

        def show
          render json: @contest, serializer: Api::V1::Companies::ContestSerializer, status: :ok
        end

        private

        def contest_params
          params.require(:contest).permit(:name, :description, :level, :company_id, :start_at, :end_at)
        end

        def find_contest
          @contest = Contest.find_by(id: params[:id])
          return render json: { errors: 'Contest not found' }, status: :not_found if @contest.blank?
        end

        def find_company
          @company = Company.find_by(id: params[:company_id])
          return render json: { errors: 'Company not found' }, status: :not_found if @company.blank?
        end
      end
    end
  end
end
