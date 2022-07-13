module Api
  module V1
    class RoadmapSerializer < ActiveModel::Serializer
      attributes :id, :title, :description

      has_many :levels
    end
  end
end
