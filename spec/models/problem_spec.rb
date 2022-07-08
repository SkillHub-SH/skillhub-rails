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
require 'rails_helper'

RSpec.describe Problem, type: :model do
  describe 'ActiveModel Associations' do
    it { expect(described_class.reflect_on_association(:submissions).macro).to eq(:has_many) }
    it { expect(described_class.reflect_on_association(:company).macro).to eq(:belongs_to) }
    it { expect(described_class.reflect_on_association(:contest).macro).to eq(:belongs_to) }
  end
end
