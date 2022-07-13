module Api
  module V1
    class LeaderboardSerializer < ActiveModel::Serializer
      attributes :id, :username

      has_one :rank
    end
  end
end
