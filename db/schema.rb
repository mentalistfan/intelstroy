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

ActiveRecord::Schema.define(version: 20150204185018) do

  create_table "categories", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "description"
    t.string   "keywords"
    t.string   "punktmenu"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  add_index "categories", ["parent_id"], name: "index_categories_on_parent_id"

  create_table "companies", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "menupunkt"
    t.string   "description"
    t.string   "keywords"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imageattachment_file_name"
    t.string   "imageattachment_content_type"
    t.integer  "imageattachment_file_size"
    t.datetime "imageattachment_updated_at"
  end

  create_table "mains", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "menupunkt"
    t.string   "imageattachment"
    t.text     "body"
    t.string   "description"
    t.string   "keywords"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "imageattachment_file_name"
    t.string   "imageattachment_content_type"
    t.integer  "imageattachment_file_size"
    t.datetime "imageattachment_updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "description"
    t.string   "keywords"
    t.string   "punktmenu"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "network_id"
    t.string   "address"
  end

  add_index "posts", ["network_id"], name: "index_posts_on_network_id"

end
