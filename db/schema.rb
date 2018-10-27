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

ActiveRecord::Schema.define(version: 20181027062630) do

  create_table "assignations", force: :cascade do |t|
    t.text "diagnostic"
    t.integer "n_room"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_assignations_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "document"
    t.string "name"
    t.string "lastName"
    t.integer "age"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.integer "specialty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "document"
    t.string "name"
    t.string "lastName"
    t.integer "age"
    t.string "sex"
    t.string "eps"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer "enabled"
    t.integer "doctor_id"
    t.integer "assignation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignation_id"], name: "index_schedules_on_assignation_id"
    t.index ["doctor_id"], name: "index_schedules_on_doctor_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "assignation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignation_id"], name: "index_states_on_assignation_id"
  end

end
