module Api
  module V1
    # Programming Language serializer to return the following attributes
    class ProgrammingLangugeSerializer < ActiveModel::Serializer
      attributes :id, :name, :judge_code, :extension
    end
  end
end
