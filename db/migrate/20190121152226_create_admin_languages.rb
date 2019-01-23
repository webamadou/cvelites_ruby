class CreateAdminLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_languages do |t|
      t.string :name
      t.string :code
      t.integer :status

      t.timestamps
    end
  end
end
