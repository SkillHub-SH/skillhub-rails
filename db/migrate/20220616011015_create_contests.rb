class CreateContests < ActiveRecord::Migration[6.1]
  def change
    create_table :contests do |t|
      t.integer :number_of_problems, null: false
      t.string :name, null: false
      t.string :level, null: false, default: 'junior'
      t.text :description
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false

      t.timestamps
    end
  end
end
