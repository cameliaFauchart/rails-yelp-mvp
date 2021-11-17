# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
kebab = { name: "Löver", category: "french", phone_number: "0633976699", address: "lille"}
pizza =  { name: "Pizza East", category: "italian", phone_number: "0633976699", address: "lille"}
pasta = { name: "Via Caro", category: "italian", phone_number: "0633976699", address: "lille"}
meat = { name: "Broc", category: "french", phone_number: "0633976699", address: "lille"}
vegan = { name: "Biche", category: "belgian", phone_number: "0633976699", address: "lille"}
dessert = { name: "Pixies", category: "japanese", phone_number: "0633976699", address: "lille"}
sushi = { name: "Yapansushi", category: "chinese", phone_number: "0633976699", address: "lille"}

#créer des instances de reviews et les associer au restaurant voulu  rating: 5
[ kebab, pizza, pasta, meat, vegan, dessert, sushi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
