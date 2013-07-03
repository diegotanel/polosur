require 'spec_helper'

describe "Personal" do
  describe "GET /personal" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get personal_index_path
      response.status.should be(200)
    end
  end
end
