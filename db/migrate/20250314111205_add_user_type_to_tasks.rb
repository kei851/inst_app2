class AddUserTypeToTasks < ActiveRecord::Migration[8.0]
  def change
    add_reference :tasks, :user_type, null: false, foreign_key: true
  end
end
