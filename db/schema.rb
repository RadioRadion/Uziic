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

ActiveRecord::Schema.define(version: 2019_11_26_132754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "follower_id"
    t.bigint "followed_id"
    t.index ["followed_id"], name: "index_favorites_on_followed_id"
    t.index ["follower_id"], name: "index_favorites_on_follower_id"
  end

  create_table "list_songs", force: :cascade do |t|
    t.bigint "lists_id"
    t.bigint "songs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lists_id"], name: "index_list_songs_on_lists_id"
    t.index ["songs_id"], name: "index_list_songs_on_songs_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "tags"
    t.string "name"
    t.string "photo"
    t.date "post_at"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_lists_on_users_id"
  end

  create_table "reposts", force: :cascade do |t|
    t.bigint "songs_id"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["songs_id"], name: "index_reposts_on_songs_id"
    t.index ["users_id"], name: "index_reposts_on_users_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "tags"
    t.string "title"
    t.string "description"
    t.string "music_url"
    t.string "photo"
    t.date "post_at"
    t.float "duration"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_songs_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "photo"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "users", column: "followed_id"
  add_foreign_key "favorites", "users", column: "follower_id"
  add_foreign_key "list_songs", "lists", column: "lists_id"
  add_foreign_key "list_songs", "songs", column: "songs_id"
  add_foreign_key "lists", "users", column: "users_id"
  add_foreign_key "reposts", "songs", column: "songs_id"
  add_foreign_key "reposts", "users", column: "users_id"
  add_foreign_key "songs", "users", column: "users_id"
end
