require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        :univers => nil,
        :name => "Name"
      ),
      Place.create!(
        :univers => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of places" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
