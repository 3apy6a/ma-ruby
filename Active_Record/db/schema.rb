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

ActiveRecord::Schema.define(version: 2019_12_08_200645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_gears", force: :cascade do |t|
    t.bigint "booking_id"
    t.bigint "gear_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_gears_on_booking_id"
    t.index ["gear_id"], name: "index_booking_gears_on_gear_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "sup_id"
    t.bigint "customer_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["sup_id"], name: "index_bookings_on_sup_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "telephone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.text "description"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gears", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "domain"
    t.string "name"
    t.string "address"
    t.boolean "is_open"
    t.integer "staff_count"
  end

  create_table "sups", force: :cascade do |t|
    t.string "model"
    t.string "avatar_url"
    t.integer "user_quantity"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "booking_gears", "bookings"
  add_foreign_key "booking_gears", "gears"
  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "sups"
end
