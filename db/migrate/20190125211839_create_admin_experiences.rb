class CreateAdminExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true
      t.text :description, null: true
      t.date :started_at, null: true
      t.date :ended_at, null: true
      t.boolean :still_there, default: false, null: true
      t.integer :status, default: 1, null: true

      t.timestamps
    end
  end
end
