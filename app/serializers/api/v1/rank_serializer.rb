module Api
  module V1
    class RankSerializer < ActiveModel::Serializer
      attributes :id, :title, :color, :score
    end
  end
end
