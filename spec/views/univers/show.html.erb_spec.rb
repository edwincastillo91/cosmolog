require 'rails_helper'

RSpec.describe "univers/show", type: :view do
  before(:each) do
    @univer = assign(:univer, Univer.create!(
      :name => "Name",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
