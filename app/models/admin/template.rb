class Admin::Template < ApplicationRecord
  self.table_name= "templates"
  belongs_to :domain
  has_and_belongs_to_many :resumes, :class_name => 'Admin::Resume'
end
