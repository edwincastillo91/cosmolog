require 'rails_helper'

RSpec.describe "univers/new", type: :view do
  before(:each) do
    assign(:univer, Univer.new(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders new univer form" do
    render

    assert_select "form[action=?][method=?]", univers_path, "post" do

      assert_select "input#univer_name[name=?]", "univer[name]"

      assert_select "input#univer_user_id[name=?]", "univer[user_id]"
    end
  end
end
