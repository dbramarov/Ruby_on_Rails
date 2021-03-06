class User < ApplicationRecord
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets, through: :likes
	
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :email, :password, :password_confirmation, presence: true, length: { minimum: 4 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  
  before_save :email_lowercase

  def email_lowercase
    email.downcase!
  end  
end
