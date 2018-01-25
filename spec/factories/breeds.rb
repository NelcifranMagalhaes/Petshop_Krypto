FactoryBot.define do
  factory :breed do
    name "Rockheart"
    sequence(:characteristics) {|n| "dog number - #{n}"}
  end
end
