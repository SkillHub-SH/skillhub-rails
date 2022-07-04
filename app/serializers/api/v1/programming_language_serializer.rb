module Api
  module V1
    # Programming Language serializer to return the following attributes
    class ProgrammingLanguageSerializer < ActiveModel::Serializer
      attributes :id, :name, :judge_code
    end
  end
end
