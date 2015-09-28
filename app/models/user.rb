class User < ActiveRecord::Base

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50, minimum: 8},
            format: {with: VALID_EMAIL_PATTERN},
            uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6, maximum: 25}, allow_nil: true

  has_many :checkouts, dependent: :destroy
  has_many :books, through: :checkouts, dependent: :destroy
  has_many :recommendations, dependent: :destroy

end
