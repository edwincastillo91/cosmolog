require 'rails_helper'

RSpec.describe "societies/index", type: :view do
  before(:each) do
    assign(:societies, [
      Society.create!(),
      Society.create!()
    ])
  end

  it "renders a list of societies" do
    render
  end
end
