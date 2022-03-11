# == Schema Information
#
# Table name: ranks
#
#  id    :bigint           not null, primary key
#  color :string           default("newbie_color"), not null
#  score :float            default(0.0), not null
#  title :string           default("newbie"), not null
#
class Rank < ApplicationRecord
  include RankCallbacks

  # Scopes
  # Enums
  enum title: {
    newbie: 'Newbie',
    pupil: 'Pupil',
    apprentice: 'Apprentice',
    specialist: 'Specialist',
    expert: 'Expert',
    candidate_master: 'Candidate Master',
    master: 'Master',
    international_master: 'International Master',
    grandmaster: 'Grandmaster',
    international_gradmaster: 'International Grandmaster',
    legendary_grandmaster: 'Legendary Grandmaster'
  }

  enum color: {
    newbie_color: 'Grey',
    pupil_color: 'Green',
    apprentice_color: 'Green',
    specialist_color: 'Light Blue',
    expert_color: 'Blue',
    candidate_master_color: 'Purple',
    master_color: 'Orange',
    international_master_color: 'Light Orange',
    grandmaster_color: 'Red',
    international_gradmaster_color: 'Red',
    legendary_grandmaster_color: 'Red'
  }
end
