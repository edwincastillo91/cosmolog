require 'rails_helper'

RSpec.describe "univers/index", type: :view do
  before(:each) do
    assign(:univers, [
      Univer.create!(
        :name => "Name",
        :user => nil
      ),
      Univer.create!(
        :name => "Name",
        :user => nil
      )
    ])
  end

  it "renders a list of univers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
