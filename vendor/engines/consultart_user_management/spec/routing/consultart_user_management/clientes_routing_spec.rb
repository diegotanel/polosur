require "spec_helper"

module ConsultartUserManagement
  describe ClientesController do
    describe "routing" do

      it "routes to #index" do
        get("/clientes").should route_to("consultart_user_management/clientes#index")
      end

      it "routes to #new" do
        get("/clientes/new").should route_to("consultart_user_management/clientes#new")
      end

      it "routes to #show" do
        get("/clientes/1").should route_to("consultart_user_management/clientes#show", :id => "1")
      end

      it "routes to #edit" do
        get("/clientes/1/edit").should route_to("consultart_user_management/clientes#edit", :id => "1")
      end

      it "routes to #create" do
        post("/clientes").should route_to("consultart_user_management/clientes#create")
      end

      it "routes to #update" do
        put("/clientes/1").should route_to("consultart_user_management/clientes#update", :id => "1")
      end

      it "routes to #destroy" do
        delete("/clientes/1").should route_to("consultart_user_management/clientes#destroy", :id => "1")
      end

    end
  end
end
