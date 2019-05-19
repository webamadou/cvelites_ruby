class Admin::Domain < ApplicationRecord

  self.table_name = "domains"
  belongs_to :domain, optional: true , :class_name => 'Admin::Domain', :foreign_key => "parent_id"
end
