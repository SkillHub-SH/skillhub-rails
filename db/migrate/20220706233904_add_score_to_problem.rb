class AddScoreToProblem < ActiveRecord::Migration[6.1]
  def change
    add_column :problems, :score, :float, null: false, default: 0.0
  end
end
