class Admin::Resume < ApplicationRecord
  self.table_name = "resumes"
  belongs_to :user
  has_and_belongs_to_many :languages, :class_name => 'Admin::Language'
  has_and_belongs_to_many :templates, :class_name => 'Admin::Template'
end
