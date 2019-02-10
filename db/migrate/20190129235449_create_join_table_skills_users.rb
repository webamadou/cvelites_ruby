class CreateJoinTableSkillsUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :skills, :users do |t|
      t.index [:skill_id, :user_id]
      t.index [:user_id, :skill_id]
      t.integer :level, default: 0,null: true
    end
  end
end
