class Personal < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :apodo, :documento, :email, :fecha_de_nacimiento, :nombre, :observaciones, :telefono
end
