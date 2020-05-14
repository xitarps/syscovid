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

ActiveRecord::Schema.define(version: 2020_05_12_235037) do

  create_table "social_distances", force: :cascade do |t|
    t.integer "how_many_residents"
    t.integer "residence_type"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "rooms"
    t.integer "many_contacts"
    t.integer "been_outdoor"
    t.integer "many_times_outdoor"
    t.integer "supermarket"
    t.integer "pharmacy"
    t.integer "health_service"
    t.integer "commerce"
    t.integer "market"
    t.integer "workplace"
    t.integer "other_places"
    t.integer "public_transportation"
    t.integer "many_transportations"
    t.integer "bus"
    t.integer "subway"
    t.integer "train"
    t.integer "transport_apps"
    t.integer "car"
    t.integer "bicycle"
    t.integer "taxi"
    t.integer "other_transportations"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_social_distances_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "user_zip_code"
    t.integer "gender"
    t.integer "age"
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "social_distances", "users"
end
