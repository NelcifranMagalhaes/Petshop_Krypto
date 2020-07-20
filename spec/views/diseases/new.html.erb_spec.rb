require 'rails_helper'

RSpec.describe "diseases/new", type: :view do
  before(:each) do
    assign(:disease, Disease.new())
  end

  it "renders new disease form" do
    render

    assert_select "form[action=?][method=?]", diseases_path, "post" do
    end
  end
end
