require 'spec_helper'

describe Personal do
  describe "campo apodo" do
    it "se adiciona el campo apodo" do
      Personal.new.should respond_to(:apodo)
    end

    it "se debe poder modificar el valor del campo" do
      @personal = Personal.create!(:apodo => "fito")
      @personal.reload
      @personal.apodo.should == "fito"
    end
  end
end
