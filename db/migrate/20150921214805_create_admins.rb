class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :status
      t.string :profile

      t.timestamps null: false
    end
  end
end
