class CreateAdminSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :description, null: true
      t.string :legal_status, null: true
      t.string :address, null: true
      t.references :country, foreign_key: {ondelete: :cascade}, null: true
      t.integer :status, default: 1, null: true

      t.timestamps
    end
  end
end
