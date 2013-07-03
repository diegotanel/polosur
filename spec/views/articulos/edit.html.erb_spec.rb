require 'spec_helper'

describe "articulos/edit" do
  before(:each) do
    @articulo = assign(:articulo, stub_model(Articulo,
      :codigo => "MyString",
      :nombre => "MyString"
    ))
  end

  it "renders the edit articulo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", articulo_path(@articulo), "post" do
      assert_select "input#articulo_codigo[name=?]", "articulo[codigo]"
      assert_select "input#articulo_nombre[name=?]", "articulo[nombre]"
    end
  end
end
