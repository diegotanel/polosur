class ArticulosController < ApplicationController
  def index
    @articulos = Articulo.all
    respond_with(@articulos)
  end

  def show
    @articulo = Articulo.find(params[:id])
    respond_with(@articulo)
  end

  def new
    @articulo = Articulo.new
    respond_with(@articulo)
  end

  def edit
    @articulo = Articulo.find(params[:id])
  end

  def create
    @articulo = Articulo.new(params[:articulo])
    @articulo.save
    respond_with(@articulo)
  end

  def update
    @articulo = Articulo.find(params[:id])
    @articulo.update_attributes(params[:articulo])
    respond_with(@articulo)
  end

  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy
    respond_with(@articulo)
  end
end
