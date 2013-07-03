require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nombre_comercial => "Nombre Comercial",
        :razon_social => "Razon Social",
        :codigo_interno => "Codigo Interno",
        :cuit => "Cuit",
        :condicion_de_iva => "Condicion De Iva",
        :telefono => "Telefono",
        :direccion => "Direccion",
        :localidad => "Localidad",
        :ciudad => "Ciudad",
        :provincia => "Provincia",
        :codigo_postal => "Codigo Postal",
        :email => "Email",
        :contacto => "Contacto",
        :lugar_de_entrega => "Lugar De Entrega",
        :observaciones => "MyText"
      ),
      stub_model(Cliente,
        :nombre_comercial => "Nombre Comercial",
        :razon_social => "Razon Social",
        :codigo_interno => "Codigo Interno",
        :cuit => "Cuit",
        :condicion_de_iva => "Condicion De Iva",
        :telefono => "Telefono",
        :direccion => "Direccion",
        :localidad => "Localidad",
        :ciudad => "Ciudad",
        :provincia => "Provincia",
        :codigo_postal => "Codigo Postal",
        :email => "Email",
        :contacto => "Contacto",
        :lugar_de_entrega => "Lugar De Entrega",
        :observaciones => "MyText"
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
    assert_select "tr>td", :text => "Condicion De Iva".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Localidad".to_s, :count => 2
    assert_select "tr>td", :text => "Ciudad".to_s, :count => 2
    assert_select "tr>td", :text => "Provincia".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo Postal".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Contacto".to_s, :count => 2
    assert_select "tr>td", :text => "Lugar De Entrega".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
