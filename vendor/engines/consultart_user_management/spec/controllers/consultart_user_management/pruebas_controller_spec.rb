require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

module ConsultartUserManagement
  describe PruebasController do

    # This should return the minimal set of attributes required to create a valid
    # Prueba. As you add validations to Prueba, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) { { "name" => "MyString" } }

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # PruebasController. Be sure to keep this updated too.
    let(:valid_session) { {} }

    describe "GET index" do
      it "assigns all pruebas as @pruebas" do
        prueba = Prueba.create! valid_attributes
        get :index, {}, valid_session
        assigns(:pruebas).should eq([prueba])
      end
    end

    describe "GET show" do
      it "assigns the requested prueba as @prueba" do
        prueba = Prueba.create! valid_attributes
        get :show, {:id => prueba.to_param}, valid_session
        assigns(:prueba).should eq(prueba)
      end
    end

    describe "GET new" do
      it "assigns a new prueba as @prueba" do
        get :new, {}, valid_session
        assigns(:prueba).should be_a_new(Prueba)
      end
    end

    describe "GET edit" do
      it "assigns the requested prueba as @prueba" do
        prueba = Prueba.create! valid_attributes
        get :edit, {:id => prueba.to_param}, valid_session
        assigns(:prueba).should eq(prueba)
      end
    end

    describe "POST create" do
      describe "with valid params" do
        it "creates a new Prueba" do
          expect {
            post :create, {:prueba => valid_attributes}, valid_session
          }.to change(Prueba, :count).by(1)
        end

        it "assigns a newly created prueba as @prueba" do
          post :create, {:prueba => valid_attributes}, valid_session
          assigns(:prueba).should be_a(Prueba)
          assigns(:prueba).should be_persisted
        end

        it "redirects to the created prueba" do
          post :create, {:prueba => valid_attributes}, valid_session
          response.should redirect_to(Prueba.last)
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved prueba as @prueba" do
          # Trigger the behavior that occurs when invalid params are submitted
          Prueba.any_instance.stub(:save).and_return(false)
          post :create, {:prueba => { "name" => "invalid value" }}, valid_session
          assigns(:prueba).should be_a_new(Prueba)
        end

        it "re-renders the 'new' template" do
          # Trigger the behavior that occurs when invalid params are submitted
          Prueba.any_instance.stub(:save).and_return(false)
          post :create, {:prueba => { "name" => "invalid value" }}, valid_session
          response.should render_template("new")
        end
      end
    end

    describe "PUT update" do
      describe "with valid params" do
        it "updates the requested prueba" do
          prueba = Prueba.create! valid_attributes
          # Assuming there are no other pruebas in the database, this
          # specifies that the Prueba created on the previous line
          # receives the :update_attributes message with whatever params are
          # submitted in the request.
          Prueba.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
          put :update, {:id => prueba.to_param, :prueba => { "name" => "MyString" }}, valid_session
        end

        it "assigns the requested prueba as @prueba" do
          prueba = Prueba.create! valid_attributes
          put :update, {:id => prueba.to_param, :prueba => valid_attributes}, valid_session
          assigns(:prueba).should eq(prueba)
        end

        it "redirects to the prueba" do
          prueba = Prueba.create! valid_attributes
          put :update, {:id => prueba.to_param, :prueba => valid_attributes}, valid_session
          response.should redirect_to(prueba)
        end
      end

      describe "with invalid params" do
        it "assigns the prueba as @prueba" do
          prueba = Prueba.create! valid_attributes
          # Trigger the behavior that occurs when invalid params are submitted
          Prueba.any_instance.stub(:save).and_return(false)
          put :update, {:id => prueba.to_param, :prueba => { "name" => "invalid value" }}, valid_session
          assigns(:prueba).should eq(prueba)
        end

        it "re-renders the 'edit' template" do
          prueba = Prueba.create! valid_attributes
          # Trigger the behavior that occurs when invalid params are submitted
          Prueba.any_instance.stub(:save).and_return(false)
          put :update, {:id => prueba.to_param, :prueba => { "name" => "invalid value" }}, valid_session
          response.should render_template("edit")
        end
      end
    end

    describe "DELETE destroy" do
      Rails.application.routes.default_url_options[:host] = 'localhost:3000'

      it "destroys the requested prueba" do
        prueba = Prueba.create! valid_attributes
        expect {
          delete :destroy, {:id => prueba.to_param}, valid_session
        }.to change(Prueba, :count).by(-1)
      end

      it "redirects to the pruebas list" do
        prueba = Prueba.create! valid_attributes
        delete :destroy, {:id => prueba.to_param}, valid_session
        response.should redirect_to(pruebas_path)
      end
    end

  end
end
