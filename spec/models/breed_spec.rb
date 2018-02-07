 require 'rails_helper'

RSpec.describe Breed, type: :model do
  	it 'create a breed' do
		breed = create(:breed)
		#puts breed.characteristics
		expect(breed.name).to !match("")
  	end
end
