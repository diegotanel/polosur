require 'spec_helper'

describe "consultart_user_management/pruebas/edit" do

  before(:each) do
    @prueba = assign(:prueba, stub_model(ConsultartUserManagement::Prueba,
                                         :name => "MyString"
                                         ))
  end



  it "renders the edit prueba form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prueba_path(@prueba), :method => "post" do
      assert_select "input#prueba_name", :name => "prueba[name]"
    end
  end
end
