class RemoveColumnHobbies < ActiveRecord::Migration[5.2]
  # on the migration we created a column user_id when the relation between user and hobby is set in a third table. We here will remove the column user_id from the hobbies table.
  def change
    remove_column :hobbies, 'user_id', :integer
  end
end
