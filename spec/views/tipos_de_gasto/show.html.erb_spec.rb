require 'spec_helper'

describe "tipos_de_gasto/show" do
  before(:each) do
    @tipo_de_gasto = assign(:tipo_de_gasto, stub_model(TipoDeGasto,
      :detalle => "Detalle"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalle/)
  end
end
