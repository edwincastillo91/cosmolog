require 'rails_helper'

RSpec.describe "places/new", type: :view do
  before(:each) do
    assign(:place, Place.new(
      :univers => nil,
      :name => "MyString"
    ))
  end

  it "renders new place form" do
    render

    assert_select "form[action=?][method=?]", places_path, "post" do

      assert_select "input#place_univers_id[name=?]", "place[univers_id]"

      assert_select "input#place_name[name=?]", "place[name]"
    end
  end
end
