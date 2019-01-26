class Admin::Domain < ApplicationRecord

  self.table_name = "domains"
  #belongs_to :domain , :class_name => 'Admin::Domain', :foreign_key => "parent_id"
end
