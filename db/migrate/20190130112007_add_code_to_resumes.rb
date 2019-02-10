class AddCodeToResumes < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :code, :string, null: true
  end
end
