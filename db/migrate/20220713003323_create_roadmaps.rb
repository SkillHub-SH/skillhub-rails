class CreateRoadmaps < ActiveRecord::Migration[6.1]
  def change
    create_table :roadmaps do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
