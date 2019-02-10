class CreateAdminHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :icon, default: '', null: true
      t.integer :status, default: 1, null: true

      t.timestamps
    end
  end
end
