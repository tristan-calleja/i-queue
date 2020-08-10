# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_10_073022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fooditems", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.decimal "unitprice"
    t.string "itemcategory"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.decimal "price"
    t.bigint "fooditem_id", null: false
    t.date "startdate"
    t.date "enddate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fooditem_id"], name: "index_menus_on_fooditem_id"
  end

  create_table "orderitems", force: :cascade do |t|
    t.bigint "fooditems_id", null: false
    t.integer "quantity"
    t.decimal "totalprice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fooditems_id"], name: "index_orderitems_on_fooditems_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "orderdate"
    t.bigint "user_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "order_id", null: false
    t.date "paymentdate"
    t.decimal "amount"
    t.string "paymenttype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "menus", "fooditems"
  add_foreign_key "orderitems", "fooditems", column: "fooditems_id"
  add_foreign_key "orders", "users"
  add_foreign_key "payments", "orders"
  add_foreign_key "payments", "users"
end
