# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

<<<<<<< HEAD
(1..10).each do |x|
  Book.create!(isbn: x+107678, title: "Book No.#{x}", desc: "description #{x}", author: "Author #{x}")
end
(1..10).each do |x|
  Book.create!(isbn: x+107678, title: "Test Book#{x}", desc: "description #{x}", author: "Author #{x}, Author #{x+1}")
end

Admin.create!(name: "Moharnab Saikia", password: "password", password_confirmation: "password", email: "msaikia@ncsu.edu")

Admin.create!(name: "Shane Sweeney", password: "password", password_confirmation: "password", email: "admin@ncsu.edu")

Admin.create!(name: "Shane Sweeney", password: "password", password_confirmation: "password", email: "ssweene2@ncsu.edu")
Admin.create!(name: "Kellie Jos", password: "password", password_confirmation: "password", email: "kmjos@ncsu.edu")


User.create!(name: "Kellie Jos", password: "password", password_confirmation: "password", email: "kmjos@ncsu.edu")
=======
admins = Admin.create([{email: 'admin@gmail.com', password: 'password'}])
admins = Admin.create([{email: 'admin2@gmail.com', password: 'password'}])

>>>>>>> 2e577ea195172657d32e65107a1fb9a24e4d9754
