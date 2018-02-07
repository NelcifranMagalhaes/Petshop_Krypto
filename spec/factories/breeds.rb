FactoryBot.define do
  factory :breed do
  	
    name Faker::Dog.breed
    sequence(:characteristics) {|n| "dog number - #{n}"}
  end
end
