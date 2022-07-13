class CreateLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.string :title, null: false, default: 'Basic'
      t.timestamps
    end
  end
end
