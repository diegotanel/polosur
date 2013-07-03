class CreateConsultartUserManagementPruebas < ActiveRecord::Migration
  def change
    create_table :consultart_user_management_pruebas do |t|
      t.string :name

      t.timestamps
    end
  end
end
