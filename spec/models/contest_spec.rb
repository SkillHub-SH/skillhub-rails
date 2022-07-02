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
#  company_id         :bigint
#
# Indexes
#
#  index_contests_on_company_id  (company_id)
#
require 'rails_helper'

RSpec.describe Contest, type: :model do
  describe 'ActiveModel Associations' do
    it { expect(described_class.reflect_on_association(:company).macro).to eq(:belongs_to) }
    it { expect(described_class.reflect_on_association(:problems).macro).to eq(:has_many) }
  end
end
