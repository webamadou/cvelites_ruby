class CreateAdminEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.references :school, foreign_key: true
      t.references :user, foreign_keys: true
      t.string :degree
      t.date :graduation_year
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
