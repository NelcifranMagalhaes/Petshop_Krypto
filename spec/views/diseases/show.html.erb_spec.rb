require 'rails_helper'

RSpec.describe "diseases/show", type: :view do
  before(:each) do
    @disease = assign(:disease, Disease.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
