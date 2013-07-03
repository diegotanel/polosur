module ConsultartUserManagement
  class Cliente < ActiveRecord::Base
    attr_accessible :nombre
  end
end
