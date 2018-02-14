require 'rails_helper'

RSpec.describe DogsController, type: :controller do
	#antes de fazer os testes, ele roda isso
	before do
		@user = create(:user)
		@dog = create(:dog)
	end

	context 'not logged user' do
		describe "Get #index" do
			before {get :index}
			it {should respond_with(200)}
		end	
	end


	context 'as logged user' do

			it 'seeing show views' do

				sign_in @user

				get :show,params: {id: @dog.id}
				expect(response).to render_template(:show)
				
			end

			it 'valid attributes' do
				dog_params = attributes_for(:dog)
				sign_in @user
				expect{
					post :create ,params: { dog: dog_params}
					}.to change(Dog,:count).by(1)
				
			end
			
		end

end
