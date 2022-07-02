module Api
  module V1
    # Topic serializer to return the following attributes
    class TopicSerializer < ActiveModel::Serializer
      attributes :id, :name, :number_of_problems

      def number_of_problems
        object.problems.count
      end
    end
  end
end
