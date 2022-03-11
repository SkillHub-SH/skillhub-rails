class CreateProblem < ActiveRecord::Migration[6.1]
  def change
    create_table :problems do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.float :time_limit, null: false
      t.integer :memory_limit, null: false
      t.integer :submitted_by, default: 0
      t.string :difficullty, default: 'Medium'
      t.timestamps
    end
  end
end
