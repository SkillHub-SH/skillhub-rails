module Api
  module V1
    module Companies
      class JobApplicationSerializer < ActiveModel::Serializer
        attributes :id, :status

        belongs_to :job
        belongs_to :company
        belongs_to :developer
      end
    end
  end
end
