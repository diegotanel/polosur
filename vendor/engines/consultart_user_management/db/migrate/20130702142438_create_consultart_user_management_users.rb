class CreateConsultartUserManagementUsers < ActiveRecord::Migration
  def change
    create_table :consultart_user_management_users do |t|
      t.string   :name
      t.string   :email
      t.boolean  :admin, :default => false
      t.string   :password_digest
      t.string   :remember_token
      t.timestamps
    end
    add_index :consultart_user_management_users, :email, :unique => true
    add_index :consultart_user_management_users, :remember_token
  end
end
