# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: 0623456547}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number: 1111111112}
beesket = {name: "Beesket", address: "20A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: 0623656532}
macdo = {name: "Macdo", address: "30 Shoreditch High St, London E1 6PQ", category: "japenese", phone_number: 1111111111}
pizza_hut = {name: "Pizza Hut", address: "40 Shoreditch High St, London E1 6PQ", category: "belgian", phone_number: 0623456574}

[dishoom, pizza_east, beesket, macdo, pizza_hut].each do |resto|
  restaurant = Restaurant.create(resto)
  puts restaurant.name
end

puts "Finished!"
