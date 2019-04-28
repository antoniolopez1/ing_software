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

ActiveRecord::Schema.define(version: 2019_04_28_153302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.text "address"
    t.string "telephone"
    t.string "document"
    t.string "speciality"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "furnitures", force: :cascade do |t|
    t.string "description"
    t.float "cost"
    t.float "profit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hours_histories", force: :cascade do |t|
    t.time "entry_time"
    t.time "departure_time"
    t.float "total_hours"
    t.float "extra_hours"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_hours_histories_on_employee_id"
  end

  create_table "materials_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measure_units", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.text "address"
    t.string "telephone"
    t.string "email"
    t.string "document"
    t.integer "ruc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.bigint "employee_id"
    t.float "accumulated"
    t.float "charge_for_hours"
    t.float "total_hours"
    t.float "total_extra_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
  end

  create_table "utilities", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilities_for_furnitures", force: :cascade do |t|
    t.integer "utilities_id"
    t.integer "furniture_id"
    t.float "width"
    t.float "high"
    t.float "thickness"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hours_histories", "employees"
  add_foreign_key "salaries", "employees"
end
