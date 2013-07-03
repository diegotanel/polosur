class CreateSitios < ActiveRecord::Migration
  def change
    create_table :sitios do |t|
      t.string :nombre
      t.string :direccion
      t.string :detalle

      t.timestamps
    end
  end
end
