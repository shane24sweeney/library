# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create(:isbn "51242", :title "title1", :description "desc1", :authors "auth1")
Book.create(:isbn "51243", :title "title2", :description "desc2", :authors "auth2")
Book.create(:isbn "51244", :title "title3", :description "desc3", :authors "auth3")
Book.create(:isbn "51245", :title "title4", :description "desc4", :authors "auth4")
Book.create(:isbn "51246", :title "title5", :description "desc5", :authors "auth5")
Book.create(:isbn "51247", :title "title6", :description "desc6", :authors "auth6")
Book.create(:isbn "51248", :title "title7", :description "desc7", :authors "auth7")

Admin.create(:email "admin1@gmail.com", :name "Admin1", :password "password")
Admin.create(:email "admin2@gmail.com", :name "Admin2", :password "password")