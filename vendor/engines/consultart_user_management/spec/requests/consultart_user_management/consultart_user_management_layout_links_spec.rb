#encoding: utf-8

require 'spec_helper'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

module ConsultartUserManagement
  describe "LayoutLinks" do

    it "should have a Home page at '/'" do
      #get '/'
      get root_path
      response.should have_selector('title', :content => "Ingresar")
    end

    it "tiene que redireccionarse a la pagina raiz" do
      visit root_path
      response.should render_template('/')
    end

    it "tiene que redireccionarse a la pagina raiz sin errores" do
      visit root_path
      response.should be_success
    end

    it "should have a signup page at '/signin'" do
      get signin_path
      response.should have_selector('title', :content => "Ingresar")
    end

    it "Visito la pagina de Sign in" do
      visit signin_path
      response.should have_selector('title', :content => "Ingresar")
    end

    it "cuando se clickea en el Logo tiene que redireccionarse a la raíz" do
      visit root_path
      click_link "logo"
      response.should render_template('new')
    end

    it "tiene que tener Logo principal" do
      visit root_path
      response.should have_selector("img", :id => "logo")
    end

    #  it "should have the right links on the layout - Sign up now!" do
    #    visit root_path
    #    click_link "Sign up now!"
    #    response.should # fill in
    #  end

    #  describe "when not signed in" do
    #    it "should have a signin link" do
    #      visit root_path
    #      response.should have_selector("a", :href => signin_path, :content => "Ingresar")
    #    end
    #  end

    describe "Cuando se quiere ingresar a la aplicacion pero con datos erroneos" do
      before(:each) do
        integration_sign_in_erroneo
      end

      it "se debe enviar los datos y comprobar que llegan" do
        response.should have_selector('pre', :content => "fruta@fruta.com")
        response.should have_selector('pre', :content => "foo")
      end

      it "se debe retornar formulario de ingreso " do
        response.should render_template('new')
      end

      it "should have a flash.now message" do
        flash.now[:error].should =~ /no válida/i
      end
    end

    describe "when signed in" do

      before(:each) do
        @user = Factory(:user)
        integration_sign_in(@user)
      end

      it "tiene que redireccionarse a la página de home" do
        visit home_path
        response.should render_template('pages/home')
      end

      it "cuando se clickea en el Logo tiene que redireccionarse a la página de home" do
        visit root_path
        click_link "logo"
        response.should render_template('pages/home')
      end

      it "tiene que redireccionarse a la página con los perfiles del usuario" do
        visit user_path(@user)
        response.should render_template('users/show')
      end

      it "tiene que redireccionarse a la página con los seteos del usuario" do
        visit edit_user_path(@user)
        response.should render_template('users/edit')
      end

      it "direccion de la pagina con el perfil del usuario" do
       # @rutaEngine = Rails.application.routes.named_routes[:consultart_user_management].path
        #{}"/consultart_user_management".should == @rutaEngine
        user_path(@user).should == "/consultart_user_management/users/#{User.first.id}"
      end

      it "prueba nombre engine" do
        Rails.application.routes.named_routes[:consultart_user_management].path == "/consultart_user_management"
      end

      it "El usuario debe haberse almacenado en el sistema" do
        User.first.name.should == @user.name
      end

      it "debe tener el nombre de la persona cuando voy al perfil" do
        visit user_path(@user)
        response.should have_selector('title', :content => @user.name)
      end

      #    "Esto no funciona en el integration test por que el paso final al loguearse es un get al perfil del usuario"
      #    it "Se debe direccionar a la pagina del usuario especifico" do
      #      response.should redirect_to('sessions')
      #    end

      it "debe estar logueado" do
        controller.should be_signed_in
      end

      it "should have a home link" do
        visit root_path
        response.should have_selector("a", :href => home_path, :content => "Home")
      end

      it "should have a home link" do
        click_link "Home"
        response.should have_selector('title', :content => "Home")
      end

      it "should have a cerrar_sesión link" do
        visit root_path
        response.should have_selector("a", :href => signout_path, :content => "Cerrar sesión")
      end

      it "should have a perfil link" do
        visit root_path
        response.should have_selector("a", :href => user_path(@user), :content => "Perfil")
      end

      it "should have a configuración link" do
        visit root_path
        response.should have_selector("a", :href => edit_user_path(@user), :content => "Configuración")
      end

      it "should have a usuarios link" do
        visit root_path
        response.should have_selector("a", :href => users_path, :content => "Usuarios")
      end

      it "no debe acceder a la página de alta de usuario" do
        visit signup_path
        response.should_not render_template('pages/home')
      end
    end

    describe "como administrador" do

      before do
        @admin = integration_sign_in(Factory(:user, :email => "admin@example.com", :admin => true))
      end

      it "should have a signup page at '/signup'" do
        get signup_path
        response.should have_selector('title', :content => "Alta de usuario")
      end

      it "tiene que redireccionarse a la página de alta de usuarios" do
        visit signup_path
        response.should render_template('users/new')
      end
    end

    DatabaseCleaner.clean
  end
end
