class AddContestToProblem < ActiveRecord::Migration[6.1]
  def change
    add_reference :problems, :contest
  end
end
