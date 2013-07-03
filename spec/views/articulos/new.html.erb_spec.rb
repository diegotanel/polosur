require 'spec_helper'

describe "articulos/new" do
  before(:each) do
    assign(:articulo, stub_model(Articulo,
      :codigo => "MyString",
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new articulo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", articulos_path, "post" do
      assert_select "input#articulo_codigo[name=?]", "articulo[codigo]"
      assert_select "input#articulo_nombre[name=?]", "articulo[nombre]"
    end
  end
end
