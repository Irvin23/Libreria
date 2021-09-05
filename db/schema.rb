# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_05_162847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detalle_prestamos", force: :cascade do |t|
    t.integer "state"
    t.datetime "returndate"
    t.bigint "usuario_id"
    t.bigint "libro_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["libro_id"], name: "index_detalle_prestamos_on_libro_id"
    t.index ["usuario_id"], name: "index_detalle_prestamos_on_usuario_id"
  end

  create_table "generos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "libros", force: :cascade do |t|
    t.string "name"
    t.bigint "genero_id"
    t.bigint "autor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["autor_id"], name: "index_libros_on_autor_id"
    t.index ["genero_id"], name: "index_libros_on_genero_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.bigint "rol_id", null: false
    t.string "name"
    t.string "lastname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rol_id"], name: "index_users_on_rol_id"
  end

  add_foreign_key "users", "rols"
end
