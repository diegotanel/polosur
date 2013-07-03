require 'spec_helper'

describe "pruebas/index" do
  before(:each) do
    assign(:pruebas, [
      stub_model(Prueba,
        :name => "Name"
      ),
      stub_model(Prueba,
        :name => "Name"
      )
    ])
  end

  it "renders a list of pruebas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
