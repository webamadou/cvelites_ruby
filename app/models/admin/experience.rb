class Admin::Experience < ApplicationRecord
  self.table_name = "experiences"
  belongs_to :company
  belongs_to :user
end
