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

ActiveRecord::Schema.define(version: 20150201011849) do

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

  create_table "leaderboards", force: :cascade do |t|
    t.integer  "created_by_id"
    t.datetime "created_at",    null: false
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.datetime "updated_at",    null: false
  end

  add_index "leaderboards", ["created_at"], name: "index_leaderboards_on_created_at"
  add_index "leaderboards", ["created_by_id"], name: "index_leaderboards_on_created_by_id"

  create_table "scores", force: :cascade do |t|
    t.integer  "leaderboard_id"
    t.integer  "player_id"
    t.integer  "score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "scores", ["leaderboard_id"], name: "index_scores_on_leaderboard_id"
  add_index "scores", ["player_id"], name: "index_scores_on_player_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "role"
    t.string   "email"
    t.string   "encrypted_password"
  end

end
