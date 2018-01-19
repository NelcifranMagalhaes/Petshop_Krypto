require 'rails_helper'

RSpec.describe Breed, type: :model do
  	it 'create a breed' do
		breed = create(:breed)
		expect(breed.name).to eq("Rockheart")
  	end
end
