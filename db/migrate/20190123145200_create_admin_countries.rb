class CreateAdminCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :iso
      t.string :name, null: false
      t.string :nicename, default: '',null: true
      t.string :iso3, default: '',null: true
      t.string :numcode, default: '',null: true
      t.string :phonecode, default: '',null: true
      t.integer :status, default: 1,null: true

      t.timestamps
    end
  end
end
