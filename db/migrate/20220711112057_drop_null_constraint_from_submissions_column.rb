class DropNullConstraintFromSubmissionsColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :submissions, :memory_limit, :float, null: true
    change_column :submissions, :time_limit, :float, null: true
  end
end
