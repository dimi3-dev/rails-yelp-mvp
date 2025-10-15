# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020 7420 9324", category: "belgian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020 7729 1888", category: "italian" }
sushi_samba = { name: "Sushi Samba", address: "Heron Tower, London EC2N 4AY", phone_number: "020 3640 7330", category: "japanese" }
le_petit_chef = { name: "Le Petit Chef", address: "123 Champs-Élysées, 75008 Paris", phone_number: "01 40 69 69 69", category: "french" }
wongs_kitchen = { name: "Wong's Kitchen", address: "456 Peking Rd, Beijing", phone_number: "010 1234 5678", category: "chinese" }

[dishoom, pizza_east, sushi_samba, le_petit_chef, wongs_kitchen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
