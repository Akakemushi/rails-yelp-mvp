# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
  { name: 'The Stirred Pot', address: '123 Column St.', phone_number: '123-3456', category: 'italian' },
  { name: 'Mandibites', address: '5421 Ring Ln.', phone_number: '443-5327', category: 'japanese' },
  { name: 'Cheese Explosion', address: '67 Rundam Way', phone_number: '098-5432', category: 'chinese' },
  { name: 'Edible Underwear Co.', address: '63-25 Kabuki-san-cho-me', phone_number: '436-7354', category: 'french' },
  { name: 'Hobo Kitchen', address: 'The alley over there', phone_number: '909-838-3522', category: 'belgian' }
]
restaurants.each do |restaurant|
  restaurant = Restaurant.new(restaurant)
  restaurant.save
end
