module Api
  module V1
    # Problem serializer to return the following attributes:
    class ProblemSerializer < ActiveModel::Serializer
      attributes :id, :title, :body, :difficullty, :memory_limit, :time_limit,
                 :created_at, :updated_at, :company_id, :contest_id
    end
  end
end
