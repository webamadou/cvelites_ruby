class Admin::Resume < ApplicationRecord
  self.table_name = "resumes"
  before_validation :set_code
  belongs_to :user
  has_and_belongs_to_many :languages, :class_name => 'Admin::Language'
  has_and_belongs_to_many :templates, :class_name => 'Admin::Template'

  def set_code
    self.code = (self.code == nil?) ? SecureRandom.uuid : self.code
  end

end
