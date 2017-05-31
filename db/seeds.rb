# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
puts "Deleted Dogs"

#@racas = ['Pitbull','Vira lata' , 'Barzoi','Basenji', 'Basset Hound', 'Basset artesiano normando','Bichon havanês'
#	, 'Basset sueco', 'Bichon bolonhês','Braco de Saint Germain', 'Chart polski',
#	'Terrier irlandês','Westie','Spaniel Bretão','Pastor norueguês','Pastor Alemão','Mastim espanhol',
#'Galgo escocês', 'Dogue argentino','Collie','Thaï Ridgeback']



1000.times do |index|
  Dog.create!(name: Faker::Cat.name,
              breed: ['Pitbull','Vira lata' , 'Barzoi','Basenji', 'Basset Hound', 'Basset artesiano normando','Bichon havanês', 'Basset sueco', 'Bichon bolonhês','Braco de Saint Germain', 'Chart polski','Terrier irlandês','Westie','Spaniel Bretão','Pastor norueguês','Pastor Alemão','Mastim espanhol','Galgo escocês', 'Dogue argentino','Collie','Thaï Ridgeback'].sample,
                genre: ['Macho','Fêmea'].sample,
                castrated:[true,false].sample ,
                birthday: Faker::Date.between(8.years.ago, Date.today),
                owner_name: Faker::Name.unique.name ,
                owner_fone: Faker::PhoneNumber.phone_number,
                last_date: Faker::Date.between(2.years.ago, Date.today)

                )
end

puts "Created #{Dog.count} Dogs"


