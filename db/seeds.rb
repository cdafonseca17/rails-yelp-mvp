require 'faker'

puts 'Creating 5 restaurant records'
Restaurant.destroy_all
5.times do
  restaurant = Restaurant.new(
    name: Faker::Artist.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end
puts 'Created'
