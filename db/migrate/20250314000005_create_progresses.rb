class CreateProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :progresses do |t|
      t.integer :user_id
      t.references :task, null: false, foreign_key: true
      t.string :status
      t.integer :spent_time

      t.timestamps
    end
  end
end
