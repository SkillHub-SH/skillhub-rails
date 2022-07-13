class AddRoadmapToLevel < ActiveRecord::Migration[6.1]
  def change
    add_reference :levels, :roadmap
  end
end
