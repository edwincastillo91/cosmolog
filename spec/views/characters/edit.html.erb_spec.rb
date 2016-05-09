require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :univers => nil,
      :membership => nil
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

      assert_select "input#character_first_name[name=?]", "character[first_name]"

      assert_select "input#character_last_name[name=?]", "character[last_name]"

      assert_select "input#character_univers_id[name=?]", "character[univers_id]"

      assert_select "input#character_membership_id[name=?]", "character[membership_id]"
    end
  end
end
