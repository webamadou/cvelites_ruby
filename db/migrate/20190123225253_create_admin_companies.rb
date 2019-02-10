class CreateAdminCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description, default: '',null: true
      t.string :legal_status, default: '',null: true
      t.string :address, default: '',null: true
      t.references :domain, foreign_keys: true , null: true
      t.integer :status, default: '',null: true
      t.date :exist_since, default: '',null: -> {'CURRENT_TIMESTAMP'}

      t.timestamps
    end
  end
end
