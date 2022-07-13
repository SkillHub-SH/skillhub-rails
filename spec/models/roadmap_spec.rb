# == Schema Information
#
# Table name: roadmaps
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  topic_id    :bigint
#
# Indexes
#
#  index_roadmaps_on_topic_id  (topic_id)
#
require 'rails_helper'

RSpec.describe Roadmap, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
