# This migration comes from consultart_user_management (originally 20130629011511)
class CreateConsultartUserManagementPruebas < ActiveRecord::Migration
  def change
    create_table :consultart_user_management_pruebas do |t|
      t.string :name

      t.timestamps
    end
  end
end
