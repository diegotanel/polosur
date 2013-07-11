require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nombre_comercial => "Nombre Comercial",
        :razon_social => "Razon Social",
        :codigo_interno => "Codigo Interno",
        :cuit => "Cuit"
      ),
      stub_model(Cliente,
        :nombre_comercial => "Nombre Comercial",
        :razon_social => "Razon Social",
        :codigo_interno => "Codigo Interno",
        :cuit => "Cuit"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre Comercial".to_s, :count => 2
    assert_select "tr>td", :text => "Razon Social".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo Interno".to_s, :count => 2
    assert_select "tr>td", :text => "Cuit".to_s, :count => 2
  end
end
