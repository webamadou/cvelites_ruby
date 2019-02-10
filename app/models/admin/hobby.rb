class Admin::Hobby < ApplicationRecord
  self.table_name = "hobbies"
  belongs_to :user
  has_and_belongs_to_many :users, :class_name => 'Admin::User'
end
