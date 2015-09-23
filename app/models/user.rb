class User < ActiveRecord::Base
  has_many :books
  has_one :profile
  before_create :build_profile

  has_secure_password validations: false

  validates :email, presence: true,
            length: { within: 5..20 },
            uniqueness: true

  validates :password, presence: true,
            length: { within: 5..20 }

  validates :id, presence: true

  validates :name, presence: true

  validates :status, presence: true
end
