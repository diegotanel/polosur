require 'spec_helper'

describe "tipos_de_envase/new" do
  before(:each) do
    assign(:tipo_de_envase, stub_model(TipoDeEnvase,
      :detalle => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_de_envase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tipos_de_envase_path, "post" do
      assert_select "input#tipo_de_envase_detalle[name=?]", "tipo_de_envase[detalle]"
    end
  end
end
