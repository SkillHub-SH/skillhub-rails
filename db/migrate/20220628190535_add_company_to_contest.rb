class AddCompanyToContest < ActiveRecord::Migration[6.1]
  def change
    add_reference :contests, :company
  end
end
