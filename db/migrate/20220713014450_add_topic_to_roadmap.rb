class AddTopicToRoadmap < ActiveRecord::Migration[6.1]
  def change
    add_reference :roadmaps, :topic
  end
end
