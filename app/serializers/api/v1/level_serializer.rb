module Api
  module V1
    class LevelSerializer < ActiveModel::Serializer
      attributes :id, :title

      has_many :resources
    end
  end
end
