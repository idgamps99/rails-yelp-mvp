categories = %w(chinese italian japanese french belgian)
puts "Seeding database..."

Restaurant.destroy_all
restaurants = []

5.times do
  restaurants << Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: categories.sample
  )
end

restaurants.each do |resto|
  5.times do
    Review.create!(
    rating: rand(0..5),
    content: Faker::Quote.famous_last_words,
    restaurant_id: resto.id
  )
  end
end


puts "Databse seeded :-)"
