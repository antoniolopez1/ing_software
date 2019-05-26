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

ActiveRecord::Schema.define(version: 2019_05_26_205437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budget_for_orders", force: :cascade do |t|
    t.float "total"
    t.text "observation"
    t.bigint "budget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_budget_for_orders_on_budget_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.text "observation"
    t.integer "quantity"
    t.float "unit_price"
    t.float "subtotal"
    t.bigint "furniture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["furniture_id"], name: "index_budgets_on_furniture_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.text "address"
    t.string "telephone"
    t.string "email"
    t.string "document"
    t.integer "ruc"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_payments", force: :cascade do |t|
    t.bigint "salary_id"
    t.float "amount"
    t.float "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salary_id"], name: "index_employee_payments_on_salary_id"
  end

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
    t.text "description"
    t.float "cost"
    t.float "profit"
    t.float "iva"
    t.float "price"
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

  create_table "material_for_furnitures", force: :cascade do |t|
    t.integer "quantity"
    t.float "cost"
    t.bigint "material_id"
    t.bigint "furniture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["furniture_id"], name: "index_material_for_furnitures_on_furniture_id"
    t.index ["material_id"], name: "index_material_for_furnitures_on_material_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "description"
    t.integer "quantity"
    t.float "cost"
    t.bigint "materials_type_id"
    t.bigint "measure_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["materials_type_id"], name: "index_materials_on_materials_type_id"
    t.index ["measure_unit_id"], name: "index_materials_on_measure_unit_id"
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

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.date "begin_date"
    t.date "end_date"
    t.text "observation"
    t.bigint "budget_for_order_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_for_order_id"], name: "index_orders_on_budget_for_order_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
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

  create_table "purchase_details", force: :cascade do |t|
    t.bigint "purchase_id"
    t.integer "quantity"
    t.float "subtotal"
    t.bigint "material_id"
    t.float "net_price"
    t.float "iva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_purchase_details_on_material_id"
    t.index ["purchase_id"], name: "index_purchase_details_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.date "purchase_date"
    t.float "total"
    t.float "amount"
    t.float "balance"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_purchases_on_provider_id"
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

  create_table "sales", force: :cascade do |t|
    t.float "total"
    t.float "amount"
    t.float "balance"
    t.string "status"
    t.bigint "order_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_sales_on_customer_id"
    t.index ["order_id"], name: "index_sales_on_order_id"
  end

  create_table "u_purchase_details", force: :cascade do |t|
    t.bigint "purchase_id"
    t.bigint "utility_id"
    t.integer "quantity"
    t.float "width"
    t.float "high"
    t.float "thickness"
    t.float "cost"
    t.float "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_u_purchase_details_on_purchase_id"
    t.index ["utility_id"], name: "index_u_purchase_details_on_utility_id"
  end


  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end


  create_table "utilities", force: :cascade do |t|
    t.bigint "utilities_type_id"
    t.integer "quantity"
    t.float "width"
    t.float "high"
    t.float "thickness"
    t.float "cost"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["utilities_type_id"], name: "index_utilities_on_utilities_type_id"
  end

  create_table "utilities_for_furnitures", force: :cascade do |t|
    t.float "width"
    t.float "high"
    t.float "thickness"
    t.float "cost"
    t.bigint "utility_id"
    t.bigint "furniture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["furniture_id"], name: "index_utilities_for_furnitures_on_furniture_id"
    t.index ["utility_id"], name: "index_utilities_for_furnitures_on_utility_id"
  end

  create_table "utilities_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "budget_for_orders", "budgets"
  add_foreign_key "budgets", "furnitures"
  add_foreign_key "employee_payments", "salaries"
  add_foreign_key "hours_histories", "employees"
  add_foreign_key "material_for_furnitures", "furnitures"
  add_foreign_key "material_for_furnitures", "materials"
  add_foreign_key "materials", "materials_types"
  add_foreign_key "materials", "measure_units"
  add_foreign_key "orders", "budget_for_orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "purchase_details", "materials"
  add_foreign_key "purchase_details", "purchases"
  add_foreign_key "purchases", "providers"
  add_foreign_key "salaries", "employees"
  add_foreign_key "sales", "customers"
  add_foreign_key "sales", "orders"
  add_foreign_key "u_purchase_details", "purchases"
  add_foreign_key "u_purchase_details", "utilities"
  add_foreign_key "utilities", "utilities_types"
  add_foreign_key "utilities_for_furnitures", "furnitures"
  add_foreign_key "utilities_for_furnitures", "utilities"
end
