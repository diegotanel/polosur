require "spec_helper"

describe SitiosController do
  describe "routing" do

    it "routes to #index" do
      get("/sitios").should route_to("sitios#index")
    end

    it "routes to #new" do
      get("/sitios/new").should route_to("sitios#new")
    end

    it "routes to #show" do
      get("/sitios/1").should route_to("sitios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sitios/1/edit").should route_to("sitios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sitios").should route_to("sitios#create")
    end

    it "routes to #update" do
      put("/sitios/1").should route_to("sitios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sitios/1").should route_to("sitios#destroy", :id => "1")
    end

  end
end
