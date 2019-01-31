class AddUserSlugToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_slug, :string, default: '', null: true
  end
end
