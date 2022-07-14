# == Schema Information
#
# Table name: problems
#
#  id                 :bigint           not null, primary key
#  body               :text             not null
#  difficullty        :string           default("medium")
#  input              :string           default(" "), not null
#  input_description  :text
#  memory_limit       :integer          not null
#  notes              :text
#  output             :string           default(" "), not null
#  output_description :text
#  score              :float            default(0.0), not null
#  submitted_by       :integer          default(0)
#  time_limit         :float            not null
#  title              :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  company_id         :bigint
#  contest_id         :bigint
#  topic_id           :bigint
#
# Indexes
#
#  index_problems_on_company_id  (company_id)
#  index_problems_on_contest_id  (contest_id)
#  index_problems_on_topic_id    (topic_id)
#
class Problem < ApplicationRecord
  # Scopes
  scope :easy_problems, -> { where(difficullty: :easy) }
  scope :medium_problems, -> { where(difficullty: :medium) }
  scope :hard_problems, -> { where(difficullty: :hard) }

  # Enums
  enum difficullty: {
    easy: 'Easy',
    medium: 'Medium',
    hard: 'Hard'
  }

  # Associations
  belongs_to :company
  belongs_to :topic
  belongs_to :contest, optional: true
  has_many :submissions, dependent: :destroy

  # Validations
  validates :input, :output, presence: true

  # Callbacks
  after_create :verify_contest

  def accepted_percentage
    return 0 if submissions.count.zero?

    num_of_accepted_submissions = submissions.where(status: 'Accepted').count
    (num_of_accepted_submissions / submissions.count).to_f
  end

  private

  def verify_contest
    Contest.update(contest_id, verified: true) if contest_id.present?
  end
end
