require 'rails_helper'

RSpec.describe Dog, type: :model do
	it 'Have 1 dog' do
		dog = create(:dog)
		expect(dog.breed).to be_kind_of(Breed)
  	end

	it "have 3 dogs" do
		dogs = create_list(:dog,3)
		expect(dogs.count).to eq(3)  		
	end


	it "is invalid without breed" do
		dog = build(:dog,breed: nil)
		dog.valid?
		expect(dog.errors[:breed]).to include("can't be blank")

	end
	#o mesmo teste acima, so que com shoulda matchers
	context "Validates" do

		it { should validate_presence_of(:breed) }

		it { should validate_presence_of(:name) }

		it "is valid with all fields" do
			dog = create(:dog)
			expect(dog).to be_valid
		end
 
	end

	context "Associations" do
 		it { is_expected.to belong_to(:breed)} #o mesmo teste de breed acima(recomendado)		
				
	end


end
