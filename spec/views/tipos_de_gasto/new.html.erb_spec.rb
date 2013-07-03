require 'spec_helper'

describe "tipos_de_gasto/new" do
  before(:each) do
    assign(:tipo_de_gasto, stub_model(TipoDeGasto,
      :detalle => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_de_gasto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tipos_de_gasto_path, "post" do
      assert_select "input#tipo_de_gasto_detalle[name=?]", "tipo_de_gasto[detalle]"
    end
  end
end
