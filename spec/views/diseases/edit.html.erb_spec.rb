require 'rails_helper'

RSpec.describe "diseases/edit", type: :view do
  before(:each) do
    @disease = assign(:disease, Disease.create!())
  end

  it "renders the edit disease form" do
    render

    assert_select "form[action=?][method=?]", disease_path(@disease), "post" do
    end
  end
end
