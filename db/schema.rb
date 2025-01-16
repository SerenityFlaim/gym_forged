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

ActiveRecord::Schema[8.0].define(version: 2025_01_16_151616) do
  create_table "clients", force: :cascade do |t|
    t.string "fullname"
    t.datetime "birthday"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "fullname"
    t.integer "experience"
    t.string "qualification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_trainings", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "instructor_id", null: false
    t.integer "price"
    t.integer "duration"
    t.datetime "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_personal_trainings_on_client_id"
    t.index ["instructor_id"], name: "index_personal_trainings_on_instructor_id"
  end

  add_foreign_key "personal_trainings", "clients"
  add_foreign_key "personal_trainings", "instructors"
end
