class CreateProgrammingLanguges < ActiveRecord::Migration[6.1]
  def change
    create_table :programming_languges do |t|
      t.string :name, null: false
      t.integer :judge_code, null: false
      t.timestamps
    end
  end
end
