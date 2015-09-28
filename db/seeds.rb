# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..50).each do |x|
  Book.create!(isbn: x+100, title: "Book No.#{x}", desc: "description #{x}", author: "Author #{x}")
end

Admin.create!(name: "Moharnab Saikia", password: "password", password_confirmation: "password", email: "msaikia@ncsu.edu")

Admin.create!(name: "Shane Sweene", password: "password", password_confirmation: "password", email: "admin@ncsu.edu")

Admin.create!(name: "Shane Sweene", password: "password", password_confirmation: "password", email: "ssweene2@ncsu.edu")

User.create!(name: "Kellie Jos", password: "password", password_confirmation: "password", email: "kmjos@ncsu.edu")
