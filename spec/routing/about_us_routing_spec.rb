require "rails_helper"

RSpec.describe AboutUsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/about_us").to route_to("about_us#index")
    end

    it "routes to #new" do
      expect(:get => "/about_us/new").to route_to("about_us#new")
    end

    it "routes to #show" do
      expect(:get => "/about_us/1").to route_to("about_us#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/about_us/1/edit").to route_to("about_us#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/about_us").to route_to("about_us#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/about_us/1").to route_to("about_us#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/about_us/1").to route_to("about_us#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/about_us/1").to route_to("about_us#destroy", :id => "1")
    end

  end
end
