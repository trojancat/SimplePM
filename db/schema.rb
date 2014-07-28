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

ActiveRecord::Schema.define(version: 20140728093857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meeting_entries", force: true do |t|
    t.text     "message"
    t.integer  "owned_id"
    t.integer  "meeting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", force: true do |t|
    t.string   "title"
    t.integer  "status"
    t.integer  "owned_id"
    t.integer  "project_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings_users", force: true do |t|
    t.integer "meeting_id"
    t.integer "user_id"
  end

  create_table "messages", force: true do |t|
    t.string   "subject"
    t.text     "message"
    t.integer  "status"
    t.integer  "sended_id"
    t.integer  "accepted_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "owned_id"
    t.integer  "status"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "owned_id"
    t.integer  "project_id"
    t.integer  "status"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
