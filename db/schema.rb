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

ActiveRecord::Schema.define(version: 2021_03_06_163756) do

  create_table "airports", force: :cascade do |t|
    t.text "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "email"
    t.integer "billing"
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "from_airport_id", null: false
    t.integer "to_airport_id", null: false
    t.datetime "datetime"
    t.integer "flight_duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["from_airport_id"], name: "index_flights_on_from_airport_id"
    t.index ["to_airport_id"], name: "index_flights_on_to_airport_id"
  end

  create_table "passenger_bookings", force: :cascade do |t|
    t.integer "passengers_id", null: false
    t.integer "bookings_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bookings_id"], name: "index_passenger_bookings_on_bookings_id"
    t.index ["passengers_id"], name: "index_passenger_bookings_on_passengers_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.text "name"
    t.text "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "flights", "airports", column: "from_airport_id"
  add_foreign_key "flights", "airports", column: "to_airport_id"
  add_foreign_key "passenger_bookings", "bookings", column: "bookings_id"
  add_foreign_key "passenger_bookings", "passengers", column: "passengers_id"
end
