require "spec_helper"

describe TiposDeGastoController do
  describe "routing" do

    it "routes to #index" do
      get("/tipos_de_gasto").should route_to("tipos_de_gasto#index")
    end

    it "routes to #new" do
      get("/tipos_de_gasto/new").should route_to("tipos_de_gasto#new")
    end

    it "routes to #show" do
      get("/tipos_de_gasto/1").should route_to("tipos_de_gasto#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipos_de_gasto/1/edit").should route_to("tipos_de_gasto#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipos_de_gasto").should route_to("tipos_de_gasto#create")
    end

    it "routes to #update" do
      put("/tipos_de_gasto/1").should route_to("tipos_de_gasto#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipos_de_gasto/1").should route_to("tipos_de_gasto#destroy", :id => "1")
    end

  end
end
