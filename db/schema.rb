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

ActiveRecord::Schema[7.0].define(version: 2023_08_25_085224) do
  create_table "user_contacts", force: :cascade do |t|
    t.integer "requesting_user_id_id", null: false
    t.integer "requested_user_id_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requested_user_id_id"], name: "index_user_contacts_on_requested_user_id_id"
    t.index ["requesting_user_id_id"], name: "index_user_contacts_on_requesting_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

  add_foreign_key "user_contacts", "users", column: "requested_user_id_id"
  add_foreign_key "user_contacts", "users", column: "requesting_user_id_id"
end
