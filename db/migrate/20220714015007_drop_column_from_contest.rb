class DropColumnFromContest < ActiveRecord::Migration[6.1]
  def change
    remove_column :contests, :number_of_problems, :integer
  end
end
