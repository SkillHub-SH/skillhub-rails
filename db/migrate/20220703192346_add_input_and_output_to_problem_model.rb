class AddInputAndOutputToProblemModel < ActiveRecord::Migration[6.1]
  def change
    add_column :problems, :input, :string, null: false, default: ' '
    add_column :problems, :output, :string, null: false, default: ' '
  end
end
