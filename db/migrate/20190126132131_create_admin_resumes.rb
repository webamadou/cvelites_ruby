class CreateAdminResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.text :description, null: true
      t.integer :status, null: true, default: 1

      t.timestamps
    end
  end
end
