require "spec_helper"

describe TiposDeEnvaseController do
  describe "routing" do

    it "routes to #index" do
      get("/tipos_de_envase").should route_to("tipos_de_envase#index")
    end

    it "routes to #new" do
      get("/tipos_de_envase/new").should route_to("tipos_de_envase#new")
    end

    it "routes to #show" do
      get("/tipos_de_envase/1").should route_to("tipos_de_envase#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipos_de_envase/1/edit").should route_to("tipos_de_envase#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipos_de_envase").should route_to("tipos_de_envase#create")
    end

    it "routes to #update" do
      put("/tipos_de_envase/1").should route_to("tipos_de_envase#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipos_de_envase/1").should route_to("tipos_de_envase#destroy", :id => "1")
    end

  end
end
