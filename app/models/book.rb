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
      where(["isbn like ? or author like ? or
description like ? or title like ? or status like ?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
    else
      all
    end
  end
end
