#encoding: utf-8

require_dependency "consultart_user_management/application_controller"

module ConsultartUserManagement
  class RolesController < ApplicationController
    before_filter :signed_in_user, :update
    before_filter :admin_user, :update

    def update
      @user = User.find_by_id(params[:id])
      if @user
        @valid = true
        if @user.admin?
          @adminCount = User.where(:admin => true).count
          if @adminCount == 1
            flash[:error] ="El último administrador no puede ser desasignado"
            @valid = false
            redirect_to @user
          end
        end
        if @valid
          @user.toggle!(:admin)
          flash[:success] = "Se ha actualizado su rol a #{nombre_del_rol(@user)}"
          redirect_to @user
        end
      else
        redirect_to users_path
      end
    end
  end
end
