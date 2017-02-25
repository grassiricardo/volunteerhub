require "rails_helper"

RSpec.describe VoluntariesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/voluntaries").to route_to("voluntaries#index")
    end

    it "routes to #new" do
      expect(:get => "/voluntaries/new").to route_to("voluntaries#new")
    end

    it "routes to #show" do
      expect(:get => "/voluntaries/1").to route_to("voluntaries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/voluntaries/1/edit").to route_to("voluntaries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/voluntaries").to route_to("voluntaries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/voluntaries/1").to route_to("voluntaries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/voluntaries/1").to route_to("voluntaries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/voluntaries/1").to route_to("voluntaries#destroy", :id => "1")
    end

  end
end
