class AddUniqueConstrainToCompaniesAndDevelopersEmails < ActiveRecord::Migration[6.1]
  def change
    change_column :developers, :email, :string, unique: true
    change_column :companies, :email, :string, unique: true
  end
end
