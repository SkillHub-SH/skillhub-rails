module Api
  module V1
    class RoadmapsController < ApplicationController
      before_action :find_topic

      def index
        roadmap = @topic.roadmap
        render json: roadmap, serializer: Api::V1::RoadmapSerializer, status: :ok
      end

      private

      def find_topic
        @topic = Topic.find_by(id: params[:topic_id])
        return render json: { errors: 'Topic not found' }, status: :not_found if @topic.blank?
      end
    end
  end
end
