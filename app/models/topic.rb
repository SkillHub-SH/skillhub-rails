# == Schema Information
#
# Table name: topics
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Topic < ApplicationRecord
  # Association
  has_many :problems
  has_one :roadmap

  # Validation
  validates :name, uniqueness: { case_sensitive: true }
end
