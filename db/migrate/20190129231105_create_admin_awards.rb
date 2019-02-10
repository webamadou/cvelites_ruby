class CreateAdminAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.references :user, foreign_key: true
      t.string :title, default: '',null: true
      t.text :description, default: nil,null: true
      t.date :date

      t.timestamps
    end
  end
end
