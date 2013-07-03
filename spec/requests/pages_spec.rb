require 'spec_helper'

describe "Pages" do
  before do
    @user = Factory(:user)
    integration_sign_in(@user)
  end

  describe "links de accesos" do
    it "Articulos" do
      etiqueta = "Articulos"
      visit consultart_user_management.home_path
      response.should have_selector("a", :href => "/articulos", :content => etiqueta)
      click_link etiqueta
      response.should render_template('articulos/index')
    end

    it "Clientes" do
      etiqueta = "Clientes"
      visit consultart_user_management.home_path
      response.should have_selector("a", :href => "/clientes", :content => etiqueta)
      click_link etiqueta
      response.should render_template('clientes/index')
    end

    it "Clientes" do
      etiqueta = "Clientes"
      visit consultart_user_management.home_path
      response.should have_selector("a", :href => "/clientes", :content => etiqueta)
      click_link etiqueta
      response.should render_template('clientes/index')
    end

    it "Personal" do
      etiqueta = "Personal"
      visit consultart_user_management.home_path
      response.should have_selector("a", :href => "/personal", :content => etiqueta)
      click_link etiqueta
      response.should render_template('personal/index')
    end

    it "Sitios" do
      etiqueta = "Sitios"
      visit consultart_user_management.home_path
      response.should have_selector("a", :href => "/sitios", :content => etiqueta)
      click_link etiqueta
      response.should render_template('sitios/index')
    end

    it "TiposDeEnvase" do
      etiqueta = "Tipos de envase"
      visit consultart_user_management.home_path
      response.should have_selector("a", :href => "/tipos_de_envase", :content => etiqueta)
      click_link etiqueta
      response.should render_template('tipos_de_envase/index')
    end

    it "TiposDeGasto" do
      etiqueta = "Tipos de gasto"
      visit consultart_user_management.home_path
      response.should have_selector("a", :href => "/tipos_de_gasto", :content => etiqueta)
      click_link etiqueta
      response.should render_template('tipos_de_gasto/index')
    end


  end

end
