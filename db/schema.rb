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

ActiveRecord::Schema.define(version: 20160202231556) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",                 limit: 255, null: false
    t.boolean  "is_public",            limit: 1
    t.string   "url",                  limit: 255
    t.integer  "headquarter_id",       limit: 4
    t.integer  "company_size_tier_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["name"], name: "index_companies_on_name", using: :btree

  create_table "company_size_tiers", force: :cascade do |t|
    t.string  "range", limit: 255, null: false
    t.integer "low",   limit: 4
    t.integer "high",  limit: 4
  end

  create_table "company_staff_stats", force: :cascade do |t|
    t.integer  "company_id",     limit: 4,                 null: false
    t.integer  "user_id",        limit: 4,                 null: false
    t.integer  "num_female_eng", limit: 4,                 null: false
    t.integer  "num_eng",        limit: 4,                 null: false
    t.boolean  "is_approved",    limit: 1, default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headquarters", force: :cascade do |t|
    t.string "city",    limit: 255
    t.string "state",   limit: 255
    t.string "country", limit: 255, default: "US", null: false
  end

  create_table "programming_languages", force: :cascade do |t|
    t.string "language", limit: 255, null: false
  end

  create_table "thoughts", force: :cascade do |t|
    t.integer  "user_id",     limit: 4,                     null: false
    t.boolean  "is_approved", limit: 1,     default: false
    t.text     "thoughts",    limit: 65535,                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                   limit: 255, default: "", null: false
    t.string   "provider",                limit: 255
    t.string   "uid",                     limit: 255
    t.string   "name",                    limit: 255
    t.string   "display_name",            limit: 255
    t.integer  "salary",                  limit: 4
    t.integer  "programming_language_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", unique: true, using: :btree

end
