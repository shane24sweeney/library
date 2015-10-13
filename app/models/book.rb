class Book < ActiveRecord::Base
  has_many :checkouts, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :users, through: :checkouts, dependent: :destroy

  #valdations
  validates :isbn, presence: true, uniqueness: true
  validates :title, presence: true
  validates :author, presence: true

  def self.search(search)
    if search
      search = search.downcase
      where("lower(title) like :search OR isbn = :search2 OR lower(author) like :search OR lower(desc) like :search OR lower(status) = :search2",search2: "#{search}",search: "%#{search}%")
    else
      all
    end
  end
end
