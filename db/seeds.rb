# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
puts 'Destroying restaurants db....'
puts 'Making new ones... '
restaurants_attributes = [
  {
    name:         "Goo Italiano",
    address:      "Tokyo",
    phone_number: "03-1234-5678",
    category:     "italian",

  },
  {
    name:         "D47",
    address:      "Tokyo",
    phone_number: "03-1222-3333",
    category:     "japanese",
  },
  {
    name:         "Mandarin",
    address:      "Osaka",
    phone_number: "04-1111-0000",
    category:     "chinese",
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

puts '...Restaurant created'
