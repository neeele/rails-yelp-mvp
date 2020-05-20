# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
langhans_grill = { name: "Rambo Doener", address: "Berliner Allee. 43", phone_number:"030 345 32 21", category: "belgian", rating: 5 }
kathmandu = { name: "Rambo Doener", address: "Berliner Allee. 43", phone_number:"030 345 32 21", category: "belgian", rating: 5 }
sushi_susi = { name: "Sushi Susi", address: "Langhansstr. 43", phone_number:"030 345 32 21", category: "italian", rating: 5 }
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE",phone_number:"030 345 32 21", rating: 5 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",phone_number:"030 345 32 21", rating: 4 }
[ rambo_doener, sushi_susi, dishoom, pizza_east, kathmandu, langhans_grill ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
