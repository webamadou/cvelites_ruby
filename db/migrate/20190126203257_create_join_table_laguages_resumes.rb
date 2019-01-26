class CreateJoinTableLaguagesResumes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :languages, :resumes do |t|
      t.index [:language_id, :resume_id]
      t.index [:resume_id, :language_id]
    end
  end
end
