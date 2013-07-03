require 'spec_helper'

describe "tipos_de_envase/edit" do
  before(:each) do
    @tipo_de_envase = assign(:tipo_de_envase, stub_model(TipoDeEnvase,
      :detalle => "MyString"
    ))
  end

  it "renders the edit tipo_de_envase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tipo_de_envase_path(@tipo_de_envase), "post" do
      assert_select "input#tipo_de_envase_detalle[name=?]", "tipo_de_envase[detalle]"
    end
  end
end
