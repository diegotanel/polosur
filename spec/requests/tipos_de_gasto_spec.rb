require 'spec_helper'

describe "TipoDeGastos" do
  describe "GET /tipos_de_gasto" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tipos_de_gasto_path
      response.status.should be(200)
    end
  end
end
