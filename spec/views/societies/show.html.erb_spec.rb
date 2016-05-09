require 'rails_helper'

RSpec.describe "societies/show", type: :view do
  before(:each) do
    @society = assign(:society, Society.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
