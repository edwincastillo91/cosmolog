require "rails_helper"

RSpec.describe SocietiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/societies").to route_to("societies#index")
    end

    it "routes to #new" do
      expect(:get => "/societies/new").to route_to("societies#new")
    end

    it "routes to #show" do
      expect(:get => "/societies/1").to route_to("societies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/societies/1/edit").to route_to("societies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/societies").to route_to("societies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/societies/1").to route_to("societies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/societies/1").to route_to("societies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/societies/1").to route_to("societies#destroy", :id => "1")
    end

  end
end
