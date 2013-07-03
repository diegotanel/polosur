require 'spec_helper'

describe "tipos_de_gasto/index" do
  before(:each) do
    assign(:tipos_de_gasto, [
      stub_model(TipoDeGasto,
        :detalle => "Detalle"
      ),
      stub_model(TipoDeGasto,
        :detalle => "Detalle"
      )
    ])
  end

  it "renders a list of tipos_de_gasto" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detalle".to_s, :count => 2
  end
end
