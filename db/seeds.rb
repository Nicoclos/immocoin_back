# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Realty.destroy_all

10.times do
  User.create!(
    first_name:Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    age: Faker::Number.between(from: 18, to: 100),
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

end

10.times do
  City.create!(
    name: Faker::Address.city
  )  
end

10.times do
  Realty.create!(
    title: Faker::TvShows::GameOfThrones.character,
    price: Faker::Number.between(from: 30000, to: 10000000),
    description:Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 50),
  )
end

puts "Seed generated mofo"