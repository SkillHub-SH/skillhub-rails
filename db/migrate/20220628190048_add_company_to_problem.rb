class AddCompanyToProblem < ActiveRecord::Migration[6.1]
  def change
    add_reference :problems, :company
  end
end
