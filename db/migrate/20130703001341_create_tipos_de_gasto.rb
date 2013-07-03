class CreateTiposDeGasto < ActiveRecord::Migration
  def change
    create_table :tipos_de_gasto do |t|
      t.string :detalle

      t.timestamps
    end
  end
end
