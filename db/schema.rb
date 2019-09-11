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

ActiveRecord::Schema.define(version: 2019_09_11_210200) do

  create_table "cuisines", force: :cascade do |t|
    t.string "category"
    t.string "classification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "difficulty"
    t.integer "rating", default: 0
    t.integer "user_id"
    t.integer "cuisine_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prep_time"
    t.text "notes"
    t.text "ingredients"
    t.string "course"
    t.integer "ingredient_id"
    t.text "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "uid"
    t.integer "years_experience"
    t.string "email"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "google_token"
    t.string "google_refresh_token"
  end

end
