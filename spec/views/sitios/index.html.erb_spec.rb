require 'spec_helper'

describe "sitios/index" do
  before(:each) do
    assign(:sitios, [
      stub_model(Sitio,
        :nombre => "Nombre",
        :direccion => "Direccion",
        :detalle => "Detalle"
      ),
      stub_model(Sitio,
        :nombre => "Nombre",
        :direccion => "Direccion",
        :detalle => "Detalle"
      )
    ])
  end

  it "renders a list of sitios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Detalle".to_s, :count => 2
  end
end
