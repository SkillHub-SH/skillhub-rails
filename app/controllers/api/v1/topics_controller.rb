module Api
  module V1
    # Topic controllesrs contains the following actions:
    class TopicsController < ApplicationController
      def index
        topics = Topic.all
        render json: topics, serializer: Api::V1::TopicSerializer, status: :ok
      end
    end
  end
end
