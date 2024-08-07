# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning Database..."
Flat.destroy_all
attributes = [
  { name: "Epicure", address: "Paris", description: "french", price_per_night: 10, number_of_guests: 10 },
  { name: "Lucas", address: "Ici", description: "chinese", price_per_night: 10, number_of_guests: 10 },
  { name: "Aueiane", address: "La bas", description: "italian", price_per_night: 10, number_of_guests: 10 },
  { name: "Anais", address: "Loin", description: "japanese", price_per_night: 10, number_of_guests: 10 },
  { name: "Vince", address: "A cote", description: "belgian", price_per_night: 10, number_of_guests: 10 }
]
attributes.each do |attribute|
  flat = Flat.create(attribute)
  puts "#{flat.name} created !"
end
puts "#{Flat.count} created !"
