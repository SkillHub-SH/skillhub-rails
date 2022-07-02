# == Schema Information
#
# Table name: companies
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_companies_on_reset_password_token  (reset_password_token) UNIQUE
#
require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'ActiveModel Associations' do
    it { expect(described_class.reflect_on_association(:contests).macro).to eq(:has_many) }
    it { expect(described_class.reflect_on_association(:problems).macro).to eq(:has_many) }
  end
end
