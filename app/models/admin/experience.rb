class Admin::Experience < ApplicationRecord
  self.table_name = "experiences"
  belongs_to :company, :class_name => 'Admin::Company'
  belongs_to :user, :class_name => 'Admin::User'
end
