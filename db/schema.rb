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

ActiveRecord::Schema.define(version: 2018_09_13_055454) do

  create_table "drivers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "longitude"
    t.decimal "latitude"
    t.string "phone_number"
    t.string "license_number"
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.index ["email"], name: "index_drivers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_drivers_on_reset_password_token", unique: true
  end

  create_table "transaction_tables", force: :cascade do |t|
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "users_id"
    t.datetime "TransactionStart"
    t.datetime "TransactionEnd"
    t.string "TransactionOrigin"
    t.string "TransactionDestination"
    t.integer "TransactionCost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_transactions_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

end
