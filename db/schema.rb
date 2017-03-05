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

ActiveRecord::Schema.define(version: 20170110142216) do

  create_table "games", force: :cascade do |t|
    t.string   "date"
    t.string   "time"
    t.string   "stadium"
    t.integer  "attendees",       precision: 38
    t.integer  "home_team",       precision: 38
    t.integer  "away_team",       precision: 38
    t.integer  "round",           precision: 38
    t.integer  "home_team_score", precision: 38
    t.integer  "away_team_score", precision: 38
    t.integer  "ht_q1",           precision: 38
    t.integer  "ht_q2",           precision: 38
    t.integer  "ht_q3",           precision: 38
    t.integer  "ht_q4",           precision: 38
    t.integer  "at_q1",           precision: 38
    t.integer  "at_q2",           precision: 38
    t.integer  "at_q3",           precision: 38
    t.integer  "at_q4",           precision: 38
    t.string   "referee"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "my_first_table_in_aws", id: false, force: :cascade do |t|
    t.integer  "empno",    limit: 5,  precision: 5
    t.string   "ename",    limit: 15
    t.datetime "hiredate"
    t.decimal  "sal",                 precision: 7, scale: 2
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "height",              precision: 38
    t.string   "dob"
    t.string   "nationality"
    t.string   "position"
    t.integer  "p_number",            precision: 38
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size",    precision: 38
    t.datetime "avatar_updated_at"
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "player_id",           precision: 38
    t.integer  "game_id",             precision: 38
    t.integer  "mins_played",         precision: 38, default: 0
    t.integer  "points",              precision: 38, default: 0
    t.integer  "two_p_field_goals",   precision: 38, default: 0
    t.integer  "three_p_field_goals", precision: 38, default: 0
    t.integer  "free_throws",         precision: 38, default: 0
    t.integer  "rebounds_off",        precision: 38, default: 0
    t.integer  "rebounds_def",        precision: 38, default: 0
    t.integer  "rebounds_total",      precision: 38, default: 0
    t.integer  "assists",             precision: 38, default: 0
    t.integer  "steals",              precision: 38, default: 0
    t.integer  "turnovers",           precision: 38, default: 0
    t.integer  "blocks_in_favor",     precision: 38, default: 0
    t.integer  "blocks_against",      precision: 38, default: 0
    t.integer  "fouls_commited",      precision: 38, default: 0
    t.integer  "fouls_received",      precision: 38, default: 0
    t.integer  "pir",                 precision: 38, default: 0
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size",      precision: 38
    t.datetime "file_updated_at"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "president"
    t.string   "coach"
    t.string   "stadium"
    t.string   "address"
    t.string   "phone"
    t.integer  "player_1",   precision: 38
    t.integer  "player_2",   precision: 38
    t.integer  "player_3",   precision: 38
    t.integer  "player_4",   precision: 38
    t.integer  "player_5",   precision: 38
    t.integer  "player_6",   precision: 38
    t.integer  "player_7",   precision: 38
    t.integer  "player_8",   precision: 38
    t.integer  "player_9",   precision: 38
    t.integer  "player_10",  precision: 38
    t.integer  "player_11",  precision: 38
    t.integer  "player_12",  precision: 38
    t.integer  "player_13",  precision: 38
    t.integer  "player_14",  precision: 38
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_foreign_key "games", "teams", column: "away_team"
  add_foreign_key "games", "teams", column: "home_team"
  add_foreign_key "stats", "games"
  add_foreign_key "stats", "players"
  add_foreign_key "teams", "players", column: "player_1"
  add_foreign_key "teams", "players", column: "player_10"
  add_foreign_key "teams", "players", column: "player_11"
  add_foreign_key "teams", "players", column: "player_12"
  add_foreign_key "teams", "players", column: "player_13"
  add_foreign_key "teams", "players", column: "player_14"
  add_foreign_key "teams", "players", column: "player_2"
  add_foreign_key "teams", "players", column: "player_3"
  add_foreign_key "teams", "players", column: "player_4"
  add_foreign_key "teams", "players", column: "player_5"
  add_foreign_key "teams", "players", column: "player_6"
  add_foreign_key "teams", "players", column: "player_7"
  add_foreign_key "teams", "players", column: "player_8"
  add_foreign_key "teams", "players", column: "player_9"
end
