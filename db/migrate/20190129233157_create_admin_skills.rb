class CreateAdminSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description, null: true, description: nil
      t.integer :status, default: 1,null: true

      t.timestamps
    end
  end
end
