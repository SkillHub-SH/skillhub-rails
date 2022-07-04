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
class ProgrammingLanguge < ApplicationRecord
  # Association
  has_many :submissions

  # Validation
  validates :judge_code, presence: true, uniqueness: true
end
