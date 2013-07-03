require 'spec_helper'

describe "articulos/show" do
  before(:each) do
    @articulo = assign(:articulo, stub_model(Articulo,
      :codigo => "Codigo",
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
    rendered.should match(/Nombre/)
  end
end
