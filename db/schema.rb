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

ActiveRecord::Schema.define(version: 20171005084546) do

  create_table "about_us", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "image"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "baseline"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "image"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "date"
    t.boolean "best"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "image"
  end

  create_table "socials", force: :cascade do |t|
    t.string "label"
    t.string "link"
    t.integer "about_u_id"
    t.integer "artist_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["about_u_id"], name: "index_socials_on_about_u_id"
    t.index ["artist_id"], name: "index_socials_on_artist_id"
    t.index ["event_id"], name: "index_socials_on_event_id"
  end

end
