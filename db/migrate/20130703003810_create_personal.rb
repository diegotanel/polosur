class CreatePersonal < ActiveRecord::Migration
  def change
    create_table :personal do |t|
      t.string :nombre
      t.string :apellido
      t.datetime :fecha_de_nacimiento
      t.string :documento
      t.string :email
      t.string :telefono
      t.string :direccion
      t.text :observaciones

      t.timestamps
    end
  end
end
