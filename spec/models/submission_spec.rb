# == Schema Information
#
# Table name: submissions
#
#  id                      :bigint           not null, primary key
#  input                   :text
#  memory_limit            :float
#  output                  :text
#  source_code             :text             not null
#  status                  :string           default("in_queue")
#  time_limit              :float
#  token                   :string           not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  developer_id            :bigint
#  problem_id              :bigint
#  programming_languges_id :bigint
#
# Indexes
#
#  index_submissions_on_developer_id             (developer_id)
#  index_submissions_on_problem_id               (problem_id)
#  index_submissions_on_programming_languges_id  (programming_languges_id)
#
require 'rails_helper'

RSpec.describe Submission, type: :model do
  describe 'ActiveModel Associations' do
    it { expect(described_class.reflect_on_association(:problem).macro).to eq(:belongs_to) }
    it { expect(described_class.reflect_on_association(:developer).macro).to eq(:belongs_to) }
  end
end
