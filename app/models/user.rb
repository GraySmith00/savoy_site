class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
#   before_save { self.name = name.downcase }
  
#   validates :name, presence: true
  
#   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#   validates :email, presence: true, length: { maximum: 80 }, format: { with: VALID_EMAIL_REGEX }
end