module Api
  module V1
    # Submission serializer to get the following attributes
    class SubmissionSerializer < ActiveModel::Serializer
      attributes :id, :source_code, :status, :time_limit, :memory_limit,
                 :token, :created_at, :updated_at
    end
  end
end
