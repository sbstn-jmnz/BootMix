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

ActiveRecord::Schema.define(version: 20150207010655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter",  limit: 255
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

  create_table "cookies", force: :cascade do |t|
    t.string   "name"
    t.integer  "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cymbals", force: :cascade do |t|
    t.string   "CymbalType"
    t.string   "family"
    t.integer  "inches"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sound"
    t.string   "image"
    t.integer  "position"
  end

  create_table "group_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at", null: false
  end

  add_index "group_users", ["deleted_at"], name: "index_group_users_on_deleted_at", using: :btree
  add_index "group_users", ["group_id"], name: "index_group_users_on_group_id", using: :btree
  add_index "group_users", ["user_id"], name: "index_group_users_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at", null: false
  end

  add_index "groups", ["deleted_at"], name: "index_groups_on_deleted_at", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "title",      limit: 255
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "toys", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "position"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at", null: false
    t.string   "email"
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at", using: :btree

end
