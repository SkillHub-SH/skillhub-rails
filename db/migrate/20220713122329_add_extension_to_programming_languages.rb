class AddExtensionToProgrammingLanguages < ActiveRecord::Migration[6.1]
  def change
    add_column :programming_languges, :extension, :string
  end
end
