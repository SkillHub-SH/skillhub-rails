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
class Level < ApplicationRecord
  # Enum
  enum title: {
    basic: 'Basic',
    intermediate: 'Intermediate',
    advanced: 'Advanced'
  }

  # Association
  belongs_to :roadmap
  has_many :resources
end
