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

ActiveRecord::Schema[7.1].define(version: 2024_01_21_154445) do
  create_table "administrators", force: :cascade do |t|
    t.string "adminName"
    t.string "adminPassword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "categoryName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "patientName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id", null: false
    t.integer "treatment_id", null: false
    t.index ["patient_id"], name: "index_selections_on_patient_id"
    t.index ["treatment_id"], name: "index_selections_on_treatment_id"
  end

  create_table "translations", force: :cascade do |t|
    t.string "translationLanguage"
    t.string "translationValue"
    t.integer "treatment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["treatment_id"], name: "index_translations_on_treatment_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "treatmentName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_treatments_on_category_id"
  end

  add_foreign_key "selections", "patients"
  add_foreign_key "selections", "treatments"
  add_foreign_key "translations", "treatments"
  add_foreign_key "treatments", "categories"
end
