class PersonalController < ApplicationController
  def index
    @personal = Personal.all
    respond_with(@personal)
  end

  def show
    @personal = Personal.find(params[:id])
    respond_with(@personal)
  end

  def new
    @personal = Personal.new
    respond_with(@personal)
  end

  def edit
    @personal = Personal.find(params[:id])
  end

  def create
    @personal = Personal.new(params[:personal])
    @personal.save
    respond_with(@personal)
  end

  def update
    @personal = Personal.find(params[:id])
    @personal.update_attributes(params[:personal])
    respond_with(@personal)
  end

  def destroy
    @personal = Personal.find(params[:id])
    @personal.destroy
    respond_with(@personal)
  end
end
