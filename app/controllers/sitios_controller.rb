class SitiosController < ApplicationController
  def index
    @sitios = Sitio.all
    respond_with(@sitios)
  end

  def show
    @sitio = Sitio.find(params[:id])
    respond_with(@sitio)
  end

  def new
    @sitio = Sitio.new
    respond_with(@sitio)
  end

  def edit
    @sitio = Sitio.find(params[:id])
  end

  def create
    @sitio = Sitio.new(params[:sitio])
    @sitio.save
    respond_with(@sitio)
  end

  def update
    @sitio = Sitio.find(params[:id])
    @sitio.update_attributes(params[:sitio])
    respond_with(@sitio)
  end

  def destroy
    @sitio = Sitio.find(params[:id])
    @sitio.destroy
    respond_with(@sitio)
  end
end
