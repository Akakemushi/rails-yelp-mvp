# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

20.times do
  data = {
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w[japanese chinese italian french belgian].sample,
    phone_number: Faker::PhoneNumber.phone_number,
    description: Faker::Restaurant.description,
    pic_url: Faker::LoremFlickr.image(size: '300x200', search_terms: ['restaurant'])
  }
  restaurant = Restaurant.new(data)
  restaurant.save
end

restaurants = Restaurant.all
restaurants.each do |restaurant|
  rand(4..10).times do
    data = {
      name: Faker::FunnyName.two_word_name,
      content: Faker::Restaurant.review,
      rating: rand(0..5),
      restaurant_id: restaurant.id
    }
    review = Review.new(data)
    review.save
  end
end
