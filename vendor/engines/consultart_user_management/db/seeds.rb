#encoding: utf-8

module ConsultartUserManagement
  @admin = User.create!(:name => "admin", :email => "admin@admin.com",
                        :password => "123456", :password_confirmation => "123456")
  @admin.toggle!(:admin)
end
