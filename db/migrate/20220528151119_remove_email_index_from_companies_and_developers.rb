class RemoveEmailIndexFromCompaniesAndDevelopers < ActiveRecord::Migration[6.1]
  def change
    remove_index :developers, :email
    remove_index :companies, :email
  end
end
