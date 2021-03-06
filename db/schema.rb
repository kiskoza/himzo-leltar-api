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

ActiveRecord::Schema.define(version: 2020_04_11_184253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "corduras", force: :cascade do |t|
    t.string "colour_name"
    t.float "stock_on_hand"
    t.float "stock_at_full"
    t.string "color_in_hexa"
    t.datetime "delete_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thread_items", force: :cascade do |t|
    t.integer "colour_number"
    t.string "colour_name"
    t.float "stock_on_hand"
    t.float "stock_at_full"
    t.string "color_in_hexa"
    t.datetime "delete_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "authsch_id"
    t.string "name"
    t.string "status"
    t.string "token"
    t.index ["authsch_id"], name: "index_users_on_authsch_id", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  create_table "utilities", force: :cascade do |t|
    t.string "name"
    t.string "icon_name"
    t.integer "stock_on_hand"
    t.integer "stock_at_full"
    t.datetime "delete_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vetexes", force: :cascade do |t|
    t.string "name"
    t.string "icon_name"
    t.boolean "is_on_stock"
    t.datetime "delete_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
