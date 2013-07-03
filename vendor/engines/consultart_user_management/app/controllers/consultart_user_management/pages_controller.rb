#encoding: utf-8

require_dependency "consultart_user_management/application_controller"

module ConsultartUserManagement
  class PagesController < ApplicationController
    def home
      @title = "Home"
    end
  end
end
