class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.integer "student_id"
      t.string "skill"
      t.timestamps
    end
  end
end
