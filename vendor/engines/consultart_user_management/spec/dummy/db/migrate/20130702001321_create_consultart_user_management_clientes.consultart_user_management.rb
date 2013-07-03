# This migration comes from consultart_user_management (originally 20130702000924)
class CreateConsultartUserManagementClientes < ActiveRecord::Migration
  def change
    create_table :consultart_user_management_clientes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
