require 'spec_helper'

module ConsultartUserManagement
  describe "consultart_user_management/pruebas/new" do
    before(:each) do
      assign(:prueba, stub_model(Prueba,
                                 :name => "MyString"
                                 ).as_new_record)

      # ConsultartUserManagement::Engine.routes.url_helpers
      # config.before(:each, type: :controller) { @routes = Licensing::Engine.routes }
      # config.before(:each, type: :routing)    { @routes = Licensing::Engine.routes }
    end

    it "renders new prueba form" do
      render

      # Run the generator again with the --webrat flag if you want to use webrat matchers
      assert_select "form[action=?][method=?]", pruebas_path, "post" do
        assert_select "input#prueba_name[name=?]", "prueba[name]"
      end
    end
  end
end
