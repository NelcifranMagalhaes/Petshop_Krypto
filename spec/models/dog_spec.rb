require 'rails_helper'

RSpec.describe Dog, type: :model do
	it 'create a dog' do
		#breed = create(:breed)
		dog = create(:dog)
		expect(dog.name).to eq("deidara_dog")
  	end
end
