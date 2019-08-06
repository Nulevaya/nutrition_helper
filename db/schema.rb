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

ActiveRecord::Schema.define(version: 2019_08_06_191504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredient_families", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.integer "calorific_value", null: false
    t.integer "proteins", null: false
    t.integer "fats", null: false
    t.integer "carbohydrates", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ingredient_family_id", null: false
    t.index ["ingredient_family_id"], name: "index_ingredients_on_ingredient_family_id"
  end

  add_foreign_key "ingredients", "ingredient_families"
end
