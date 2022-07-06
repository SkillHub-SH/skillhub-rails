class AddFieldsToProblemModel < ActiveRecord::Migration[6.1]
  def change
    add_column :problems, :input_description, :text
    add_column :problems, :output_description, :text
    add_column :problems, :notes, :text
  end
end
