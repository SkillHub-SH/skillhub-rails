class CreateSubmission < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.text :source_code, null: false
      t.integer :memory_limit, null: false
      t.float :time_limit, null: false
      t.string :status, default: 'In Queue'
      t.string :token, null: false
      t.timestamps
    end
  end
end
