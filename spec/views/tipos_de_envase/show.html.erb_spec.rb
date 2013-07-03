require 'spec_helper'

describe "tipos_de_envase/show" do
  before(:each) do
    @tipo_de_envase = assign(:tipo_de_envase, stub_model(TipoDeEnvase,
      :detalle => "Detalle"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detalle/)
  end
end
