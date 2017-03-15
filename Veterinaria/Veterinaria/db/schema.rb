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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170209232012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "rut"
    t.string   "mail"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agendas", force: :cascade do |t|
    t.integer  "veterinario_id"
    t.date     "fecha"
    t.time     "hora"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["veterinario_id"], name: "index_agendas_on_veterinario_id", using: :btree
  end

  create_table "boleta", force: :cascade do |t|
    t.integer  "proveedor_id"
    t.integer  "admin_id"
    t.integer  "cliente_id"
    t.integer  "consulta_id"
    t.integer  "costo"
    t.date     "fecha"
    t.time     "hora"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["admin_id"], name: "index_boleta_on_admin_id", using: :btree
    t.index ["cliente_id"], name: "index_boleta_on_cliente_id", using: :btree
    t.index ["consulta_id"], name: "index_boleta_on_consulta_id", using: :btree
    t.index ["proveedor_id"], name: "index_boleta_on_proveedor_id", using: :btree
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "rut"
    t.string   "direccion"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.integer  "paciente_id"
    t.string   "sintomas"
    t.string   "diagnostico"
    t.date     "fecha_llegada"
    t.date     "fecha_salida"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["paciente_id"], name: "index_consulta_on_paciente_id", using: :btree
  end

  create_table "pacientes", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "nombre"
    t.string   "sexo"
    t.integer  "edad"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pacientes_on_cliente_id", using: :btree
  end

  create_table "productos", force: :cascade do |t|
    t.integer  "proveedor_id"
    t.string   "nombre"
    t.integer  "codigo"
    t.string   "tipo"
    t.integer  "precio"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["proveedor_id"], name: "index_productos_on_proveedor_id", using: :btree
  end

  create_table "proveedors", force: :cascade do |t|
    t.integer  "admin_id"
    t.string   "nombre"
    t.integer  "rut"
    t.string   "mail"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_proveedors_on_admin_id", using: :btree
  end

  create_table "veterinarios", force: :cascade do |t|
    t.integer  "admin_id"
    t.integer  "consulta_id"
    t.string   "nombre"
    t.integer  "rut"
    t.integer  "telefono"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["admin_id"], name: "index_veterinarios_on_admin_id", using: :btree
    t.index ["consulta_id"], name: "index_veterinarios_on_consulta_id", using: :btree
  end

  add_foreign_key "agendas", "veterinarios"
  add_foreign_key "boleta", "admins"
  add_foreign_key "boleta", "clientes"
  add_foreign_key "boleta", "consulta", column: "consulta_id"
  add_foreign_key "boleta", "proveedors"
  add_foreign_key "consulta", "pacientes"
  add_foreign_key "pacientes", "clientes"
  add_foreign_key "productos", "proveedors"
  add_foreign_key "proveedors", "admins"
  add_foreign_key "veterinarios", "admins"
  add_foreign_key "veterinarios", "consulta", column: "consulta_id"
end
