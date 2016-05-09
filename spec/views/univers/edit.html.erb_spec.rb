require 'rails_helper'

RSpec.describe "univers/edit", type: :view do
  before(:each) do
    @univer = assign(:univer, Univer.create!(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders the edit univer form" do
    render

    assert_select "form[action=?][method=?]", univer_path(@univer), "post" do

      assert_select "input#univer_name[name=?]", "univer[name]"

      assert_select "input#univer_user_id[name=?]", "univer[user_id]"
    end
  end
end
