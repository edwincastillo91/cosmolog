require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyText",
      :univers => nil,
      :place => nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "textarea#event_name[name=?]", "event[name]"

      assert_select "input#event_univers_id[name=?]", "event[univers_id]"

      assert_select "input#event_place_id[name=?]", "event[place_id]"
    end
  end
end
