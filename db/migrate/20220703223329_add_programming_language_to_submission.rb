class AddProgrammingLanguageToSubmission < ActiveRecord::Migration[6.1]
  def change
    add_reference :submissions, :programming_languges
  end
end
