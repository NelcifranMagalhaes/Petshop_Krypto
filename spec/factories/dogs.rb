FactoryBot.define do
  factory :dog do

    name { Faker::Superhero.name }
    genre { ['Male','Female'].sample } 
    castrated {"true"}
    birthday {Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}
    owner_name {Faker::Name.name}
    owner_fone {Faker::PhoneNumber.phone_number}
    breed
  end
end
