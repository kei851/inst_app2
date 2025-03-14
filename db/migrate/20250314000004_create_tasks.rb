class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :category
      t.integer :estimated_time
      t.integer :position

      t.timestamps
    end
  end
end
