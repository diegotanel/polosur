# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130712001840) do

  create_table "articulos", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "tipo_de_envase_id", :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre_comercial"
    t.string   "razon_social"
    t.string   "codigo_interno"
    t.string   "cuit"
    t.string   "condicion_de_iva"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "localidad"
    t.string   "ciudad"
    t.string   "provincia"
    t.string   "codigo_postal"
    t.string   "email"
    t.string   "contacto"
    t.string   "lugar_de_entrega"
    t.text     "observaciones"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "consultart_user_management_clientes", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consultart_user_management_pruebas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consultart_user_management_users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin",           :default => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "consultart_user_management_users", ["email"], :name => "index_consultart_user_management_users_on_email", :unique => true
  add_index "consultart_user_management_users", ["remember_token"], :name => "index_consultart_user_management_users_on_remember_token"

  create_table "personal", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "fecha_de_nacimiento"
    t.string   "documento"
    t.string   "email"
    t.string   "telefono"
    t.string   "direccion"
    t.text     "observaciones"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "apodo"
  end

  create_table "sitios", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "detalle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_de_envase", :force => true do |t|
    t.string   "detalle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_de_gasto", :force => true do |t|
    t.string   "detalle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
