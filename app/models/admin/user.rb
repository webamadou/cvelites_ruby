class Admin::User < ApplicationRecord

  self.table_name = "users"
  belongs_to :country
  has_many :resumes, :class_name => 'Admin::Resume'
  has_secure_password
  has_and_belongs_to_many :hobbies, :class_name => 'Admin::Hobby'
end