class AddStatusToContest < ActiveRecord::Migration[6.1]
  def change
    add_column :contests, :status, :string, null: false, default: 'Upcoming'
  end
end
