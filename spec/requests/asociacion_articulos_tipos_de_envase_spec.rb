#encoding: utf-8

require 'spec_helper'

describe "AsociacionArticulosTiposDeEnvases" do
  describe "vista alta" do
    it "debe mostrar un listado con los tipos de envase" do
      visit new_articulo_path
      response.should have_selector("select#articulo_tipo_de_envase_id")
    end

    it "debe mostrar un listado con los tipos de envase" do
      @tipo_de_envase = TipoDeEnvase.create!(:detalle => "bolsa")
      visit new_articulo_path
      response.should have_selector("select#articulo_tipo_de_envase_id") do |n|
        n.should have_selector('option[value=""]', :content => "Seleccione un tipo de envase...")
        n.should have_selector('option[value="1"]', :content => "bolsa")
      end
    end

    it "debe dar de alta un articulo con el tipo de envase seleccionado" do
      @tipo_de_envase = TipoDeEnvase.create!(:detalle => "bolsa")
      visit new_articulo_path
      fill_in :codigo, :with => "1"
      fill_in :nombre, :with => "art1"
      select "bolsa", :from => :articulo_tipo_de_envase_id
      click_button
    end

    it "debe mostrar un indicando que se debe seleccionar un tipo de envase" do
      @tipo_de_envase = TipoDeEnvase.create!(:detalle => "bolsa")
      visit new_articulo_path
      fill_in :codigo, :with => "1"
      fill_in :nombre, :with => "art1"
      click_button
    end
  end

  describe "vista edición" do
    before do
      @tipo_de_envase = TipoDeEnvase.create!(:detalle => "bolsa")
      visit new_articulo_path
      fill_in :codigo, :with => "1"
      fill_in :nombre, :with => "art1"
      select "bolsa", :from => :articulo_tipo_de_envase_id
      click_button
      @articulo = Articulo.find(1)
    end

    it "debe traer el tipo de envase asociado" do
      TipoDeEnvase.create!(:detalle => "bolsa2")
      visit edit_articulo_path(@articulo)
      response.should have_selector('option[selected="selected"]', :content => "bolsa")
    end

    it "debe mostrar mensaje un indicando que se debe seleccionar un tipo de envase" do
      visit edit_articulo_path(@articulo)
      select "Seleccione un tipo de envase...", :from => :articulo_tipo_de_envase_id
      click_button
    end

    it "debe actualizar el cambio de tipo de envase" do
      TipoDeEnvase.create!(:detalle => "bolsa2")
      visit edit_articulo_path(@articulo)
      select "bolsa2", :from => :articulo_tipo_de_envase_id
      click_button
      visit edit_articulo_path(@articulo)
      response.should have_selector('option[selected="selected"]', :content => "bolsa2")
    end
  end

  describe "vista lista" do
    it "debe mostrar el tipo de envase en la lista de articulos" do
      @tipo_de_envase = TipoDeEnvase.create!(:detalle => "bolsa")
      @articulo = Articulo.create!(:codigo => "1", :nombre => "art1", :tipo_de_envase_id => @tipo_de_envase.id)
      visit articulos_path
      response.should have_selector("td", :content => "bolsa")
    end

  end

  describe "vista destalle" do
    it "debe mostrar el tipo de envase en la vista detalle" do
      @tipo_de_envase = TipoDeEnvase.create!(:detalle => "bolsa")
      @articulo = Articulo.create!(:codigo => "1", :nombre => "art1", :tipo_de_envase_id => @tipo_de_envase.id)
      visit articulo_path(@articulo)
      response.should have_selector("p", :content => "bolsa")
    end
  end
end
