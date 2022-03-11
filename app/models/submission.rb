# == Schema Information
#
# Table name: submissions
#
#  id           :bigint           not null, primary key
#  memory_limit :integer          not null
#  source_code  :text             not null
#  status       :string           default("in_queue")
#  time_limit   :float            not null
#  token        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Submission < ApplicationRecord
  # Scopes
  # scope :for_problem, -> (peoblem_id) { where(problem_id: peoblem_id) }
  # scope :by_developer, -> (developer_id) { where(developer_id: developer_id)}

  # Enums
  enum status: {
    in_queue: 'In Queue',
    processing: 'Processing',
    accepted: 'Accepted',
    wrong_answer: 'Wrong Answer',
    time_limit_exceeded: 'Time Limit Exceeded',
    compilation_error: 'Compilation Error',
    runtime_error: 'Runtime Error',
    internal_error: 'Internal Error',
    exec_format_error: 'Exec Format Error'
  }
end
