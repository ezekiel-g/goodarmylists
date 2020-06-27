# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_27_123824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name", null: false
    t.string "display_name", null: false
    t.string "abbreviation", null: false
    t.string "company", null: false
    t.string "game_type"
  end

  create_table "kow_armies", force: :cascade do |t|
    t.string "name", null: false
    t.string "alignment", null: false
    t.string "adjective", null: false
    t.bigint "game_id"
    t.index ["game_id"], name: "index_kow_armies_on_game_id"
  end

  create_table "kow_artefacts", force: :cascade do |t|
    t.string "name", null: false
    t.string "display_name", null: false
    t.integer "points", null: false
    t.boolean "is_heroic", default: false, null: false
    t.bigint "game_id"
    t.index ["game_id"], name: "index_kow_artefacts_on_game_id"
  end

  create_table "kow_unit_options", force: :cascade do |t|
    t.string "name", null: false
    t.string "display_name", null: false
    t.integer "points", null: false
    t.boolean "is_spell", default: false, null: false
    t.boolean "is_unique", default: false, null: false
    t.bigint "game_id"
    t.bigint "kow_unit_id"
    t.index ["game_id"], name: "index_kow_unit_options_on_game_id"
    t.index ["kow_unit_id"], name: "index_kow_unit_options_on_kow_unit_id"
  end

  create_table "kow_units", force: :cascade do |t|
    t.string "name", null: false
    t.string "display_name", null: false
    t.string "unit_type", null: false
    t.integer "unit_type_index", null: false
    t.string "unit_size", null: false
    t.integer "unit_strength", null: false
    t.integer "points", null: false
    t.integer "limited_n", null: false
    t.boolean "is_irregular", default: false, null: false
    t.integer "unlocking_class", null: false
    t.integer "spellcaster"
    t.integer "height"
    t.string "speed"
    t.string "melee"
    t.string "ranged"
    t.string "defense"
    t.string "attacks"
    t.string "nerve"
    t.text "special_rules"
    t.text "special_rules_cont"
    t.text "spells"
    t.text "options"
    t.text "keywords"
    t.bigint "game_id"
    t.bigint "kow_army_id"
    t.index ["game_id"], name: "index_kow_units_on_game_id"
    t.index ["kow_army_id"], name: "index_kow_units_on_kow_army_id"
  end

end
