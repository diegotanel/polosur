require 'spec_helper'

describe "pruebas/show" do
  before(:each) do
    @prueba = assign(:prueba, stub_model(Prueba,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
