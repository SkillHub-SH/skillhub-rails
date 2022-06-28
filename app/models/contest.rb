# == Schema Information
#
# Table name: contests
#
#  id                 :bigint           not null, primary key
#  description        :text
#  end_at             :datetime         not null
#  level              :string           default("junior"), not null
#  name               :string           not null
#  number_of_problems :integer          not null
#  start_at           :datetime         not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Contest < ApplicationRecord
  validates :number_of_problems, numericality: { greater_than: 0 }
  validate :end_at_greater_than_start_at

  enum level: {
    junior: 'junior',
    mid: 'mid',
    senior: 'senior'
  }

  private

  def end_at_greater_than_start_at
    errors.add(:end_at, message: 'end_at must be after start_at') unless end_at < start_at
  end
end
