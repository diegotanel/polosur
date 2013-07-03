require "application_responder"
# require "consultart_user_management"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
  helper ConsultartUserManagement::Engine.helpers
  helper ConsultartUserManagement::SessionsHelper
end
