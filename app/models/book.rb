class Book < ActiveRecord::Base
  belongs_to :user

  def status_name
    status ? "Available" : "Checked Out"
  end

  def self.search(search)
    where("title LIKE ? OR description LIKE ? OR isbn LIKE ? OR authors LIKE ? OR status LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
