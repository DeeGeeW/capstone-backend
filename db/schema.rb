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

ActiveRecord::Schema[7.0].define(version: 2022_05_13_003950) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "birds", force: :cascade do |t|
    t.string "c_name"
    t.string "s_name"
    t.string "image_url"
    t.integer "post_count"
    t.string "description"
    t.string "background_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "bird_id"
    t.integer "location_id"
    t.integer "user_id"
    t.string "comment_text"
    t.decimal "lat", precision: 8, scale: 5
    t.decimal "long", precision: 8, scale: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "state"
    t.string "state_bird"
    t.string "location_comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "migs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "new_bird"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_mod", default: false
  end

end
