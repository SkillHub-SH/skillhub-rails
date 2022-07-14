module Api
  module V1
    module Companies
      class ContestSerializer < ActiveModel::Serializer
        attributes :id, :name, :description, :level, :status, :verified, :start_at, :end_at

        has_many :problems
      end
    end
  end
end
