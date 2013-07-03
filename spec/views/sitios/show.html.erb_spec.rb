require 'spec_helper'

describe "sitios/show" do
  before(:each) do
    @sitio = assign(:sitio, stub_model(Sitio,
      :nombre => "Nombre",
      :direccion => "Direccion",
      :detalle => "Detalle"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Direccion/)
    rendered.should match(/Detalle/)
  end
end
