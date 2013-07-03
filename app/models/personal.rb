class Personal < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :documento, :email, :fecha_de_nacimiento, :nombre, :observaciones, :telefono
end
