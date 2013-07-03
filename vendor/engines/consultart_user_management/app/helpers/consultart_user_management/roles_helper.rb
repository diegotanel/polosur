#encoding: utf-8
module ConsultartUserManagement
  module RolesHelper

    def nombre_del_rol(user)
      user.admin? ? "Administrador" : "Usuario básico"
    end
  end
end
