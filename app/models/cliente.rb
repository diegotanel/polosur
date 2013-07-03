class Cliente < ActiveRecord::Base
  attr_accessible :ciudad, :codigo_interno, :codigo_postal, :condicion_de_iva, :contacto, :cuit, :direccion, :email, :localidad, :lugar_de_entrega, :nombre_comercial, :observaciones, :provincia, :razon_social, :telefono
end
