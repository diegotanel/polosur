require 'spec_helper'

describe "tipos_de_gasto/edit" do
  before(:each) do
    @tipo_de_gasto = assign(:tipo_de_gasto, stub_model(TipoDeGasto,
      :detalle => "MyString"
    ))
  end

  it "renders the edit tipo_de_gasto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tipo_de_gasto_path(@tipo_de_gasto), "post" do
      assert_select "input#tipo_de_gasto_detalle[name=?]", "tipo_de_gasto[detalle]"
    end
  end
end
