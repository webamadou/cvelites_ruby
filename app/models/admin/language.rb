class Admin::Language < ApplicationRecord

  self.table_name = "languages"
  has_and_belongs_to_many :resumes, :class_name => 'Admin::Resume'
end
