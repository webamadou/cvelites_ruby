class CreateAdminTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :templates do |t|
      t.string :name
      t.text :description, null: true
      t.references :domain, foreign_key: {on_delete: :cascade, on_update: :cascade}, null: true
      t.integer :views, default: 1, null: true
      t.integer :status, default: 1, null: true

      t.timestamps
    end
  end
end
