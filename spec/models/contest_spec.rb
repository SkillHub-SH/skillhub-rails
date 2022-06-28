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
require 'rails_helper'

RSpec.describe Contest, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
