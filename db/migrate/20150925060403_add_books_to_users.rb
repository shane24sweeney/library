class AddBooksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :books, :string, null: true, default: ""
  end
end
