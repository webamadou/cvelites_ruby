class Admin::Skill < ApplicationRecord

  self.table_name = "skills"
  has_and_belongs_to_many :users, :class_name => 'Admin::User'
end
