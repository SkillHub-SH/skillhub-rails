# == Schema Information
#
# Table name: programming_languges
#
#  id         :bigint           not null, primary key
#  judge_code :integer          not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe ProgrammingLanguge, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
