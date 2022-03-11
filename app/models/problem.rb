# == Schema Information
#
# Table name: problems
#
#  id           :bigint           not null, primary key
#  body         :text             not null
#  difficullty  :string           default("medium")
#  memory_limit :integer          not null
#  submitted_by :integer          default(0)
#  time_limit   :float            not null
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Problem < ApplicationRecord
  # Scopes
  scope :easy_problems, -> { where(difficullty: :easy)}
  scope :medium_problems, -> { where(difficullty: :medium) }
  scope :hard_problems, -> { where(difficullty: :hard) }

  # Enums
  enum difficullty: {
    easy: 'Easy',
    medium: 'Medium',
    hard: 'Hard'
  }
end
