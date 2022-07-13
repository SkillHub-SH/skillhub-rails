# == Schema Information
#
# Table name: levels
#
#  id         :bigint           not null, primary key
#  title      :string           default("basic"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  roadmap_id :bigint
#
# Indexes
#
#  index_levels_on_roadmap_id  (roadmap_id)
#
require 'rails_helper'

RSpec.describe Level, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
