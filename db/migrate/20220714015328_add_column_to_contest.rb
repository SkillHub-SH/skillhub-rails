class AddColumnToContest < ActiveRecord::Migration[6.1]
  def change
    add_column :contests, :verified, :boolean, null: false, default: false
  end
end
