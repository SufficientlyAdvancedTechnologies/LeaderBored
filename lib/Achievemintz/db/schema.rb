# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150201041152) do

  create_table "achievement_unlocks", force: :cascade do |t|
    t.integer  "achievement_id"
    t.integer  "player_id"
    t.integer  "progression"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "achievement_unlocks", ["achievement_id", "player_id"], name: "index_achievement_unlocks_on_achievement_id_and_player_id", unique: true
  add_index "achievement_unlocks", ["achievement_id"], name: "index_achievement_unlocks_on_achievement_id"
  add_index "achievement_unlocks", ["player_id"], name: "index_achievement_unlocks_on_player_id"

  create_table "achievements", force: :cascade do |t|
    t.integer  "created_by_id"
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "achievements", ["created_by_id"], name: "index_achievements_on_created_by_id"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "badges", force: :cascade do |t|
    t.integer  "achievement_unlock_id"
    t.integer  "player_id"
    t.float    "multiplier"
    t.integer  "status"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "badges", ["achievement_unlock_id"], name: "index_badges_on_achievement_unlock_id"
  add_index "badges", ["player_id"], name: "index_badges_on_player_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "role"
  end

end
