class AddLevelsToResource < ActiveRecord::Migration[6.1]
  def change
    add_reference :resources, :level
  end
end
