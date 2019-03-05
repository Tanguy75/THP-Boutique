# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts 'Starting to seed..'

20.times do
	password = Faker::Internet.password(8)
	User.create(email: Faker::Internet.free_email, password: password, password_confirmation: password)
end
puts '20 users created'

20.times do
	Item.create(title: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.decimal(2))
end
puts '20 Items created'
 

puts 'Seeding over, enjoy your new database'
