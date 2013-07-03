module ConsultartUserManagement
  class User < ActiveRecord::Base

    attr_accessible :name, :email, :password, :password_confirmation
    # has_one :cotizacionpesodolar, :class_name => "CotizacionPesoDolar"
    has_secure_password

    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, :presence => true, :length => {:maximum => 50}
    validates :email, :presence => true,
      :format => {:with => email_regex},
      :uniqueness => {:case_sensitive => false}
    validates :password, :presence => true,
      :confirmation => true,
      :length => {:within => 6..40}

    before_save :create_remember_token

    private

      def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
      end
  end
end
