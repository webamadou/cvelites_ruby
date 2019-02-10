class Admin::Education < ApplicationRecord
  self.table_name = "educations"
  belongs_to :school
end
