class AddProblemsToTopic < ActiveRecord::Migration[6.1]
  def change
    add_reference :problems, :topic
  end
end
