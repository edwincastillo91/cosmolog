require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyText",
      :univers => nil,
      :place => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "textarea#event_name[name=?]", "event[name]"

      assert_select "input#event_univers_id[name=?]", "event[univers_id]"

      assert_select "input#event_place_id[name=?]", "event[place_id]"
    end
  end
end
