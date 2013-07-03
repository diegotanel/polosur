class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre_comercial
      t.string :razon_social
      t.string :codigo_interno
      t.string :cuit
      t.string :condicion_de_iva
      t.string :telefono
      t.string :direccion
      t.string :localidad
      t.string :ciudad
      t.string :provincia
      t.string :codigo_postal
      t.string :email
      t.string :contacto
      t.string :lugar_de_entrega
      t.text :observaciones

      t.timestamps
    end
  end
end
