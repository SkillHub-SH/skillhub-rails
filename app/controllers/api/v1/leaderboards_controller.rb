module Api
  module V1
    class LeaderboardsController < ApplicationController
      def index
        top_developers = Developer.includes(:rank).order('ranks.score DESC').first(5)
        render json: top_developers, each_serializer: Api::V1::LeaderboardSerializer, status: :ok
      end
    end
  end
end
