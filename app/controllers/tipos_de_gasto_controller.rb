class TiposDeGastoController < ApplicationController
  def index
    @tipos_de_gasto = TipoDeGasto.all
    respond_with(@tipos_de_gasto)
  end

  def show
    @tipo_de_gasto = TipoDeGasto.find(params[:id])
    respond_with(@tipo_de_gasto)
  end

  def new
    @tipo_de_gasto = TipoDeGasto.new
    respond_with(@tipo_de_gasto)
  end

  def edit
    @tipo_de_gasto = TipoDeGasto.find(params[:id])
  end

  def create
    @tipo_de_gasto = TipoDeGasto.new(params[:tipo_de_gasto])
    @tipo_de_gasto.save
    respond_with(@tipo_de_gasto)
  end

  def update
    @tipo_de_gasto = TipoDeGasto.find(params[:id])
    @tipo_de_gasto.update_attributes(params[:tipo_de_gasto])
    respond_with(@tipo_de_gasto)
  end

  def destroy
    @tipo_de_gasto = TipoDeGasto.find(params[:id])
    @tipo_de_gasto.destroy
    respond_with(@tipo_de_gasto)
  end
end
