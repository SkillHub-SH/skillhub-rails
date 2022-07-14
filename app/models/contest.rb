# == Schema Information
#
# Table name: contests
#
#  id          :bigint           not null, primary key
#  description :text
#  end_at      :datetime         not null
#  level       :string           default(NULL), not null
#  name        :string           not null
#  start_at    :datetime         not null
#  status      :string           default("upcoming"), not null
#  verified    :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :bigint
#
# Indexes
#
#  index_contests_on_company_id  (company_id)
#
class Contest < ApplicationRecord
  enum level: {
    junior: 'Junior',
    mid: 'Mid',
    senior: 'Senior'
  }

  enum status: {
    upcoming: 'Upcoming',
    running: 'Running',
    finished: 'Finished'
  }

  # Associations
  belongs_to :company
  has_many :problems, dependent: :destroy

  # Validations
  validate :end_at_greater_than_start_at

  private

  def end_at_greater_than_start_at
    errors.add(:end_at, message: 'end_at must be after start_at') if end_at < start_at
  end
end
