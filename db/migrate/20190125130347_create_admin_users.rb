class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: true
      t.string :firstname, null: true
      t.string :email
      t.string :password_digest
      t.string :title, default: '', null: true
      t.string :presentation, default: '', null: true
      t.date :birth_date,null: true
      t.string :birth_place, null: true
      t.references :country, foreign_key: {detele: :noaction}, null: true
      t.string :address, null: true
      t.integer :views, null: true, default: 0
      t.integer :status, default: 1, null: true

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
