class CreateResources < ActiveRecord::Migration[6.1]
  def change
    create_table :resources do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.integer :estimated_time, null: false
      t.timestamps
    end
  end
end
