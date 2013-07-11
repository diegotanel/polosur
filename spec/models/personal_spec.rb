require 'spec_helper'

describe Personal do
  it "se adiciona el campo apodo" do
    Personal.new.should respond_to(:apodo)
  end
end
