class Admin::Company < ApplicationRecord

  belongs_to :domain, :class_name => 'Admin::Domain'
  self.table_name = "companies"
end
