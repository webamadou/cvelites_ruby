class CreateAdminDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|
      t.string :name
      t.text :description,  null: true
      t.references :parent_id, foreign_keys: true, default: {} , null: true
      t.integer :status, default: 1, null: true

      t.timestamps
    end
  end
end