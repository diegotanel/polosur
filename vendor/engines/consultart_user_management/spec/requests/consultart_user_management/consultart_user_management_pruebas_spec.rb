require 'spec_helper'

describe "Pruebas" do
  describe "GET /consultart_user_management_pruebas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get consultart_user_management_pruebas_path
      get pruebas_path
      response.status.should be(200)
    end
  end
end
