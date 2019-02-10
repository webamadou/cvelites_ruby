class Admin::Award < ApplicationRecord

  self.table_name = "awards"
  belongs_to :user
end
