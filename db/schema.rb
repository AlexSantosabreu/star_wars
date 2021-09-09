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

ActiveRecord::Schema.define(version: 2021_09_09_141250) do

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.string "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.string "birth_year"
    t.string "gender"
    t.integer "planet_id"
    t.integer "specie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "person_starships", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "starship_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_person_starships_on_person_id"
    t.index ["starship_id"], name: "index_person_starships_on_starship_id"
  end

  create_table "person_vehicles", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "vehicle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_person_vehicles_on_person_id"
    t.index ["vehicle_id"], name: "index_person_vehicles_on_vehicle_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "rotation_period"
    t.string "orbital_period"
    t.string "diameter"
    t.string "climate"
    t.string "gravity"
    t.string "terrain"
    t.string "surface_water"
    t.string "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.string "average_height"
    t.string "skin_colors"
    t.string "hair_colors"
    t.string "eye_colors"
    t.string "average_lifespan"
    t.string "language"
    t.integer "planet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.string "cost_in_credits"
    t.string "length"
    t.string "max_atmosphering_speed"
    t.string "crew"
    t.string "passengers"
    t.string "cargo_capacity"
    t.string "consumables"
    t.string "hyperdrive_rating"
    t.string "MGLT"
    t.string "starship_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.string "cost_in_credits"
    t.string "length"
    t.string "max_atmosphering_speed"
    t.string "crew"
    t.string "passengers"
    t.string "cargo_capacity"
    t.string "consumables"
    t.string "vehicle_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "person_starships", "people"
  add_foreign_key "person_starships", "starships"
  add_foreign_key "person_vehicles", "people"
  add_foreign_key "person_vehicles", "vehicles"
end
