require 'rails_helper'

RSpec.describe "diseases/index", type: :view do
  before(:each) do
    assign(:diseases, [
      Disease.create!(),
      Disease.create!()
    ])
  end

  it "renders a list of diseases" do
    render
  end
end
