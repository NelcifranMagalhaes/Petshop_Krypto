require 'rails_helper'

RSpec.describe Dog, type: :model do
	it 'Have 1 dog' do
		dog = create(:dog)
		expect(dog.breed).to be_kind_of(Breed)
  	end
end
