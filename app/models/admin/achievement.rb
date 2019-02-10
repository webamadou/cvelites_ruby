class Admin::Achievement < ApplicationRecord

  self.table_name = "achievements"
  belongs_to :user
end
