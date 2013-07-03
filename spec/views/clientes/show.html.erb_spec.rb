require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre Comercial/)
    rendered.should match(/Razon Social/)
    rendered.should match(/Codigo Interno/)
    rendered.should match(/Cuit/)
    rendered.should match(/Condicion De Iva/)
    rendered.should match(/Telefono/)
    rendered.should match(/Direccion/)
    rendered.should match(/Localidad/)
    rendered.should match(/Ciudad/)
    rendered.should match(/Provincia/)
    rendered.should match(/Codigo Postal/)
    rendered.should match(/Email/)
    rendered.should match(/Contacto/)
    rendered.should match(/Lugar De Entrega/)
    rendered.should match(/MyText/)
  end
end
