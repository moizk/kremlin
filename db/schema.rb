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

ActiveRecord::Schema.define(version: 20140421021714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitors", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "note_categories", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "user_id"
    t.string   "ip_address"
    t.string   "user_agent"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "note_category_id"
    t.text     "thought"
    t.boolean  "purchased",        default: false
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "title"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_entries", force: true do |t|
    t.integer  "project_id"
    t.text     "comment"
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "git_repo"
    t.string   "color"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal  "hourly"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "wiki"
    t.boolean  "private"
    t.integer  "students"
    t.string   "saf"
    t.integer  "budget"
    t.string   "sga_website"
    t.string   "sga_facebook"
    t.string   "sga_twitter"
    t.string   "newspaper"
    t.integer  "competitor_id"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "customer",      default: false
    t.boolean  "anchor_school", default: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "company"
    t.string   "location"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
