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

ActiveRecord::Schema.define(version: 2019_06_13_143207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_kinds", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.decimal "monthly_cost", precision: 8, scale: 2
    t.bigint "animal_kind_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_kind_id"], name: "index_animals_on_animal_kind_id"
    t.index ["person_id"], name: "index_animals_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "document"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "animal_kinds"
  add_foreign_key "animals", "people"
end
