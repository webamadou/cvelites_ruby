class RenameParentIdDomains < ActiveRecord::Migration[5.2]
  #I made a error on the migration naming the parent domain 'parent_id' setting it as  reference; it then name the column 'parent_id_id'. We change it here to parent_id
  def change
    rename_column :domains, :parent_id_id, 'parent_id'
  end
end
