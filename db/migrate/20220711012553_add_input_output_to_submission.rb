class AddInputOutputToSubmission < ActiveRecord::Migration[6.1]
  def change
    add_column :submissions, :input, :text
    add_column :submissions, :output, :text
  end
end
