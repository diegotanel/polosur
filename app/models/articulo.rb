class Articulo < ActiveRecord::Base
  belongs_to :tipo_de_envase
  attr_accessible :codigo, :nombre, :tipo_de_envase_id

  validates :tipo_de_envase_id, :presence => true
end
