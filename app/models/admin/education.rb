class Admin::Education < ApplicationRecord
  self.table_name = "educations"
  belongs_to :school, :class_name => 'Admin::School'
end
