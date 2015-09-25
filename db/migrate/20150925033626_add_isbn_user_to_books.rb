class AddIsbnUserToBooks < ActiveRecord::Migration
  def change
    add_column :books, :isbn, :string,null: false, default: ""
    add_column :books, :user_id, :string, null: true, default: ""
    add_index :books, :isbn
  end
end
