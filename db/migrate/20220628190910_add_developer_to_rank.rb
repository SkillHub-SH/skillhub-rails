class AddDeveloperToRank < ActiveRecord::Migration[6.1]
  def change
    add_reference :ranks, :developer
  end
end
