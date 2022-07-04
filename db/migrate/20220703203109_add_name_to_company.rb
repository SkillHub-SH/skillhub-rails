class AddNameToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :name, :string, null: false, default: ' '
  end
end
