class Book < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy
  has_many :users, through: :checkouts, dependent: :destroy

  #valdations
  validates :isbn, presence: true, uniqueness: true
  validates :title, presence: true
  validates :author, presence: true

  def self.search(search)
    if search
      where(["title LIKE ?", "%#{search}%"])||
          where(["desc LIKE ?", "%#{search}%"]) ||
          where(["isbn LIKE ?", "%#{search}%"]) ||
          where(["author LIKE ?", "%#{search}%"]) ||
          where(["status LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
