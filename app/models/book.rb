class Book < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true

  def status_name
    status ? "Available" : "Checked Out"
  end
end
