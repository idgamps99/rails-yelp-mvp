categories = %w(chinese italian japanese french belgian)
puts "Seeding database..."

10.times do
  puts "Creating restaurant..."
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: categories.sample
  )
  puts "Restaurant added!"
end

puts "Databse seeded :-)"
