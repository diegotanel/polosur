class CreateTiposDeEnvase < ActiveRecord::Migration
  def change
    create_table :tipos_de_envase do |t|
      t.string :detalle

      t.timestamps
    end
  end
end
