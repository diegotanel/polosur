require 'spec_helper'

describe "sitios/edit" do
  before(:each) do
    @sitio = assign(:sitio, stub_model(Sitio,
      :nombre => "MyString",
      :direccion => "MyString",
      :detalle => "MyString"
    ))
  end

  it "renders the edit sitio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sitio_path(@sitio), "post" do
      assert_select "input#sitio_nombre[name=?]", "sitio[nombre]"
      assert_select "input#sitio_direccion[name=?]", "sitio[direccion]"
      assert_select "input#sitio_detalle[name=?]", "sitio[detalle]"
    end
  end
end
