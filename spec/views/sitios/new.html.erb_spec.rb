require 'spec_helper'

describe "sitios/new" do
  before(:each) do
    assign(:sitio, stub_model(Sitio,
      :nombre => "MyString",
      :direccion => "MyString",
      :detalle => "MyString"
    ).as_new_record)
  end

  it "renders new sitio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sitios_path, "post" do
      assert_select "input#sitio_nombre[name=?]", "sitio[nombre]"
      assert_select "input#sitio_direccion[name=?]", "sitio[direccion]"
      assert_select "input#sitio_detalle[name=?]", "sitio[detalle]"
    end
  end
end
