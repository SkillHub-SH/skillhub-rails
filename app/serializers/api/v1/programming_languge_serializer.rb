module Api
  module V1
    # Programming Language serializer to return the following attributes
    class ProgrammingLangugeSerializer < ActiveModel::Serializer
      attributes :id, :name, :judge_code, :default_languages_names

      def default_languages_names
        ProgrammingLanguge.default_languages_names
      end
    end
  end
end
