class CreateAdminLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :code
      t.integer :status, default: 1,null: false

      t.timestamps
    end
  end
end
