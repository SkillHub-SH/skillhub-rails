# == Schema Information
#
# Table name: resources
#
#  id             :bigint           not null, primary key
#  estimated_time :integer          not null
#  title          :string           not null
#  url            :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  level_id       :bigint
#
# Indexes
#
#  index_resources_on_level_id  (level_id)
#
class Resource < ApplicationRecord
  belongs_to :level
end
