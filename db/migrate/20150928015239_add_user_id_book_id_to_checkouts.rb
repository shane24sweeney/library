class AddUserIdBookIdToCheckouts < ActiveRecord::Migration
  def change
    add_reference :checkouts, :user, index: true, foreign_key: true
    add_reference :checkouts, :book, index: true, foreign_key: true
  end
end
