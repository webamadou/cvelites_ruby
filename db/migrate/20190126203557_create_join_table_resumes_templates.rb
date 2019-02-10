class CreateJoinTableResumesTemplates < ActiveRecord::Migration[5.2]
  def change
    create_join_table :resumes, :templates do |t|
      t.index [:resume_id, :template_id]
      t.index [:template_id, :resume_id]
    end
  end
end
