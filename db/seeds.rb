Dog.destroy_all
puts 'Deleted Dogs'

Breed.destroy_all
puts 'Deleted Breeds'

20.times do |_index|
  Breed.create!(
    name: Faker::Creature::Dog.breed,

    characteristics: Faker::Creature::Dog.size
  )
end

puts "Created #{Breed.count} breeds"

50.times do |_index|
  Dog.create!(name: Faker::Creature::Dog.name,
              breed_id: Faker::Number.between(1, 19),
              genre: %w[Macho Fêmea].sample,
              castrated: [true, false].sample,
              birthday: Faker::Date.between(8.years.ago, Date.today),
              owner_name: Faker::Name.unique.name,
              owner_fone: Faker::PhoneNumber.phone_number)
end

puts "Created #{Dog.count} Dogs"
