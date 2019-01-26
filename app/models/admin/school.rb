class Admin::School < ApplicationRecord
  self.table_name = "schools"
  belongs_to :country, :class_name => 'Admin::Country'
end
