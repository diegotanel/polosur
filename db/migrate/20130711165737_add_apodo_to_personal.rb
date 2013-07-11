class AddApodoToPersonal < ActiveRecord::Migration
  def change
    add_column :personal, :apodo, :string
  end
end
