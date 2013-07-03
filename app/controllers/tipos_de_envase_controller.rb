class TiposDeEnvaseController < ApplicationController
  def index
    @tipos_de_envase = TipoDeEnvase.all
    respond_with(@tipos_de_envase)
  end

  def show
    @tipo_de_envase = TipoDeEnvase.find(params[:id])
    respond_with(@tipo_de_envase)
  end

  def new
    @tipo_de_envase = TipoDeEnvase.new
    respond_with(@tipo_de_envase)
  end

  def edit
    @tipo_de_envase = TipoDeEnvase.find(params[:id])
  end

  def create
    @tipo_de_envase = TipoDeEnvase.new(params[:tipo_de_envase])
    @tipo_de_envase.save
    respond_with(@tipo_de_envase)
  end

  def update
    @tipo_de_envase = TipoDeEnvase.find(params[:id])
    @tipo_de_envase.update_attributes(params[:tipo_de_envase])
    respond_with(@tipo_de_envase)
  end

  def destroy
    @tipo_de_envase = TipoDeEnvase.find(params[:id])
    @tipo_de_envase.destroy
    respond_with(@tipo_de_envase)
  end
end
