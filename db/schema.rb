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

ActiveRecord::Schema[7.0].define(version: 2022_10_20_112743) do
  create_table "backgrounds", force: :cascade do |t|
    t.string "bgName"
    t.text "bgDesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "charName"
    t.string "charGender"
    t.string "charLvl"
    t.integer "dndclass_id", null: false
    t.integer "race_id", null: false
    t.integer "background_id", null: false
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "wis"
    t.integer "int"
    t.integer "cha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["background_id"], name: "index_characters_on_background_id"
    t.index ["dndclass_id"], name: "index_characters_on_dndclass_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "dndclasses", force: :cascade do |t|
    t.string "className"
    t.string "classHD"
    t.text "classDesc"
    t.string "classProfSav"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "racebonusses", force: :cascade do |t|
    t.integer "race_id", null: false
    t.string "bonusAtr"
    t.string "bonusValue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_racebonusses_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "raceName"
    t.text "raceDesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "backgrounds"
  add_foreign_key "characters", "dndclasses"
  add_foreign_key "characters", "races"
  add_foreign_key "racebonusses", "races"
end
