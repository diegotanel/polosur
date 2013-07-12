require 'spec_helper'

describe Articulo do
  describe "tipo_de_envase_id" do
    it "debe responder a tipo_de_envase_id" do
      Articulo.new.should respond_to(:tipo_de_envase_id)
    end

    it "no debe ser nulo" do
      @articulo = Articulo.new
      @articulo.tipo_de_envase_id = nil
      @articulo.should_not be_valid
    end

    it "asignarle valor" do
      @tipo_de_envase = TipoDeEnvase.create!(:detalle => "bolsa")
      @articulo = Articulo.create!(:codigo => "1", :nombre => "art1", :tipo_de_envase_id => @tipo_de_envase.id)
    end

    it "debe responde a tipo_de_envase" do
      Articulo.new.should respond_to(:tipo_de_envase)
    end

  end
end
