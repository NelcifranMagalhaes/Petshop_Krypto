require 'rails_helper'

RSpec.describe DogsController, type: :controller do
	
	describe "Get #index" do
		before {get :index}
		it {should respond_with(200)}
	end

end
