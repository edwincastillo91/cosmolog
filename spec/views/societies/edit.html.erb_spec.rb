require 'rails_helper'

RSpec.describe "societies/edit", type: :view do
  before(:each) do
    @society = assign(:society, Society.create!())
  end

  it "renders the edit society form" do
    render

    assert_select "form[action=?][method=?]", society_path(@society), "post" do
    end
  end
end
