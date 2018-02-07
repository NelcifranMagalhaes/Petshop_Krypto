require 'rails_helper'

RSpec.describe Dog, type: :model do
	it 'Have 1 dog' do
		dog = create(:dog)
		expect(dog.breed).to be_kind_of(Breed)
  	end

	it "have 3 dogs" do
		dogs = create_list(:dog,3,owner_name: "unknow owner GG") #i can sobrescribe the atributes of dogs..XD
		#puts dogs.inspect
		expect(dogs.count).to eq(3)  		
	end

end
