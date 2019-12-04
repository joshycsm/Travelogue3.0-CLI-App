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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_12_04_173253) do
=======
ActiveRecord::Schema.define(version: 2019_12_04_172542) do
>>>>>>> ef230faa3781f03ccd4648922f7f5779bda4bc4b

  create_table "countries", force: :cascade do |t|
    t.string "name"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "attraction"
    t.integer "country_id"
    t.integer "traveler_id"
    t.index ["country_id"], name: "index_recommendations_on_country_id"
    t.index ["traveler_id"], name: "index_recommendations_on_traveler_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "recommendations", "countries"
  add_foreign_key "recommendations", "travelers"
end
