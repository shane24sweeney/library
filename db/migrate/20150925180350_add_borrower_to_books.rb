class AddBorrowerToBooks < ActiveRecord::Migration
  def change
    add_column :books, :borrower, :string, null: true, default: ""
  end
end
