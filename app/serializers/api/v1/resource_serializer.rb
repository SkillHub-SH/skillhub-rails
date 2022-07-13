module Api
  module V1
    class ResourceSerializer < ActiveModel::Serializer
      attributes :id, :title, :url, :estimated_time
    end
  end
end
