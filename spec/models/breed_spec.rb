 require 'rails_helper'

RSpec.describe Breed, type: :model do

  	it 'create a breed' do
		breed = create(:breed)
		#puts breed.characteristics
		#expect(breed.name).to !match("")
  	end

  	it "is valid with name and characteristics" do
		breed = create(:breed)
		expect(breed).to be_valid
  	end

  	it "is invalid without name" do
  		breed = build(:breed,name: nil)
  		breed.valid?
  		expect(breed.errors[:name]).to include("can't be blank")
  	end

end
