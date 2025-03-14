class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :department
      t.integer :role
      t.string :slack_id
      t.references :user_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
