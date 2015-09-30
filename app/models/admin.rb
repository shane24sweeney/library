class Admin < ActiveRecord::Base
  before_save { self.email = email.downcase }

  VALID_EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50, minimum: 8},
            format: {with: VALID_EMAIL_PATTERN},
            uniqueness: {case_sensitive: false}
  validates :name, presence: true, length: {maximum: 50}
  has_secure_password
  validates :password, presence: true, length: {minimum: 8, maximum: 25}, allow_nil: true
end
