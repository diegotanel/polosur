module ConsultartUserManagement
  class ApplicationController < ActionController::Base
    include SessionsHelper
    include UsersHelper
    include RolesHelper
  end
end
