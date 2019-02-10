class CreateAdminAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description, null: true, default: nil
      t.integer :status, default: 1, null: true

      t.timestamps
    end
  end
end
