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

			it "Json format with content-type" do

				dog_params = attributes_for(:dog)
				sign_in @user
				post :create,format: :json,params: {dog: dog_params}
				expect(response.content_type).to eq('application/json')  
			end

			# it "Flash Notice" do
			# 	dog_params = attributes_for(:dog)
			# 	sign_in @user
			# 	post :show,format: :json,params:{id: @dog.id}
			# 	expect(flash[:notice]).to match(/Dog was successfully created./)  
			# end

			it 'invalid attributes' do
				dog_params = attributes_for(:dog,name:nil)
				sign_in @user
				expect{
					post :create ,format: :json,params: { dog: dog_params}
					}.not_to change(Dog,:count)
				
			end

	 		it 'routes' do
               should route(:get, '/dogs').
               	to(controller: :dogs, action: :index)
            end


		end

end
