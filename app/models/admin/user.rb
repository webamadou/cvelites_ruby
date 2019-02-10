class Admin::User < ApplicationRecord

  self.table_name = "users"
  belongs_to :country
  has_many :resumes, :class_name => 'Admin::Resume'
  has_secure_password
  has_and_belongs_to_many :hobbies, :class_name => 'Admin::Hobby'
  has_and_belongs_to_many :skills, :class_name => 'Admin::Skill'
  before_create :set_user_slug

  def set_user_slug
    loop do
      self.user_slug = SecureRandom.hex(5)
      break unless self.class.exists?(:user_slug => user_slug)
    end
  end
end