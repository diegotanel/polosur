require "spec_helper"

describe PersonalController do
  describe "routing" do

    it "routes to #index" do
      get("/personal").should route_to("personal#index")
    end

    it "routes to #new" do
      get("/personal/new").should route_to("personal#new")
    end

    it "routes to #show" do
      get("/personal/1").should route_to("personal#show", :id => "1")
    end

    it "routes to #edit" do
      get("/personal/1/edit").should route_to("personal#edit", :id => "1")
    end

    it "routes to #create" do
      post("/personal").should route_to("personal#create")
    end

    it "routes to #update" do
      put("/personal/1").should route_to("personal#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/personal/1").should route_to("personal#destroy", :id => "1")
    end

  end
end
