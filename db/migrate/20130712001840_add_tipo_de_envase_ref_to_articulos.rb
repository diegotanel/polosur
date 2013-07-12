class AddTipoDeEnvaseRefToArticulos < ActiveRecord::Migration
  def change
    add_column :articulos, :tipo_de_envase_id, :integer, :index => true
    change_column :articulos, :tipo_de_envase_id, :integer, :null => false
  end
end
