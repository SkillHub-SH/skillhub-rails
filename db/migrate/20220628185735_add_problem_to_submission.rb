class AddProblemToSubmission < ActiveRecord::Migration[6.1]
  def change
    add_reference :submissions, :problem
  end
end
