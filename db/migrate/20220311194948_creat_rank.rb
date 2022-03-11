class CreatRank < ActiveRecord::Migration[6.1]
  def change
    create_table :ranks do |t|
      t.string :title, default: 'Newbie', null: false
      t.float :score, default: 0, null: false
      t.string :color, default: 'Grey', null: false
    end
  end
end
