# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

#Item.destroy_all
User.destroy_all

puts 'Start seeding...'

20.times do
Item.create!(title: Faker::Cat.name, description: Faker::Cat.breed, price: Faker::Number.decimal(2))
end
puts '20 items created'

5.times do
	User.create!(email: Faker::Internet.email,	password: '#$taawktljasktlw4aaglj', first_name: Faker::Hobbit.character, last_name: Faker::RickAndMorty.character)
end
puts '5 users created'
