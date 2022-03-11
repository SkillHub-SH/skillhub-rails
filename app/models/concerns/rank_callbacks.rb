require 'active_support/concern'

module RankCallbacks
  extend ActiveSupport::Concern

  included do
    after_commit :update_rank_title, if: -> { score_changed? }
    after_commit :update_rank_color, if: -> { score_changed? }
  end

  def update_rank_title
    case score
    when 0.0..999.0
      update(title: :newbie)
    when 1000.0...1199.0
      update(title: :pupil)
    when 1200.0..1399.0
      update(title: :apprentice)
    when 1400.0..1599.0
      update(title: :specialist)
    when 1600.0..1799.0
      update(title: :expert)
    when 1800.0..1999.0
      update(title: :candidate_master)
    when 2000.0..2199.0
      update(title: :master)
    when 2200.0..2399.0
      update(title: :international_master)
    when 2400.0..2699.0
      update(title: :grandmaster)
    when 2700.0..2999.0
      update(title: :international_gradmaster)
    when 3000.0..5000.0
      update(title: :legendary_grandmaster)
    end
  end

  def update_rank_color
    case title
    when 'Newbie'
      update(color: :newbie_color)
    when 'Pupil'
      update(color: :pupil_color)
    when 'Apprentice'
      update(color: :apprentice_color)
    when 'Specialist'
      update(color: :specialist_color)
    when 'Expert'
      update(color: :expert_color)
    when 'Candidate Master'
      update(color: :candidate_master_color)
    when 'Master'
      update(color: :master_color)
    when 'International Master'
      update(color: :international_master_color)
    when 'Grandmaster'
      update(color: :grandmaster_color)
    when 'International Gradmaster'
      update(color: :international_gradmaster_color)
    when 'Legendary Grandmaster'
      update(color: :legendary_grandmaster_color)
    end
  end
end
