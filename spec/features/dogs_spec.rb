require 'rails_helper'

RSpec.feature "Dogs", type: :feature do
	it "Visit the index page" do
		visit(dogs_path)
		#page.save_and_open_screenshot('screenshot.png')
		expect(page).to have_current_path(dogs_path)  
	end

	it "Creates a Dog" do
		user = create(:user)
		login_as(user, :scope => :user)
		
		visit(new_dog_path)
		fill_in('dog[owner_name]', with: Faker::Name.name)
		fill_in('dog[name]', with: Faker::Superhero.name)
		fill_in('dog[owner_fone]', with: Faker::PhoneNumber.phone_number)

		breed = create(:breed)
		#p breed
		random_genre = ['Male','Female'].sample

		select(breed.name, from: 'dog[breed_id]',match: :first)
		select(random_genre, from: 'dog[genre]')

  		click_button 'Add'

  		expect(page).to have_content('Dog was successfully created.') 


	end
end
