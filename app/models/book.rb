class Book < ActiveRecord::Base
  belongs_to :user

  def status_name
    status ? "Available" : "Checked Out"
  end

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("description LIKE ?", "%#{search}%")
    where("ISBN LIKE ?", "%#{search}%")
    where("authors LIKE ?", "%#{search}%")
    where("status LIKE ?", "%#{search}%")
  end

end
