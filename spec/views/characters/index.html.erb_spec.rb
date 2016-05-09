require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :univers => nil,
        :membership => nil
      ),
      Character.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :univers => nil,
        :membership => nil
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
