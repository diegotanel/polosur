require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nombre_comercial => "MyString",
      :razon_social => "MyString",
      :codigo_interno => "MyString",
      :cuit => "MyString",
      :condicion_de_iva => "MyString",
      :telefono => "MyString",
      :direccion => "MyString",
      :localidad => "MyString",
      :ciudad => "MyString",
      :provincia => "MyString",
      :codigo_postal => "MyString",
      :email => "MyString",
      :contacto => "MyString",
      :lugar_de_entrega => "MyString",
      :observaciones => "MyText"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do
      assert_select "input#cliente_nombre_comercial[name=?]", "cliente[nombre_comercial]"
      assert_select "input#cliente_razon_social[name=?]", "cliente[razon_social]"
      assert_select "input#cliente_codigo_interno[name=?]", "cliente[codigo_interno]"
      assert_select "input#cliente_cuit[name=?]", "cliente[cuit]"
      assert_select "input#cliente_condicion_de_iva[name=?]", "cliente[condicion_de_iva]"
      assert_select "input#cliente_telefono[name=?]", "cliente[telefono]"
      assert_select "input#cliente_direccion[name=?]", "cliente[direccion]"
      assert_select "input#cliente_localidad[name=?]", "cliente[localidad]"
      assert_select "input#cliente_ciudad[name=?]", "cliente[ciudad]"
      assert_select "input#cliente_provincia[name=?]", "cliente[provincia]"
      assert_select "input#cliente_codigo_postal[name=?]", "cliente[codigo_postal]"
      assert_select "input#cliente_email[name=?]", "cliente[email]"
      assert_select "input#cliente_contacto[name=?]", "cliente[contacto]"
      assert_select "input#cliente_lugar_de_entrega[name=?]", "cliente[lugar_de_entrega]"
      assert_select "textarea#cliente_observaciones[name=?]", "cliente[observaciones]"
    end
  end
end
