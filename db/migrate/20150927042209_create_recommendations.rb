class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|

      t.string :isbn
      t.string :title
      t.string :description
      t.string :author
      t.string :status, :default => "Pending"
      t.string :comment
      t.references :user

      t.timestamps null: false
    end
  end
end
