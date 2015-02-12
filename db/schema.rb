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

ActiveRecord::Schema.define(version: 20150211194518) do

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

  create_table "companycontacts", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "punktmenu"
    t.string   "description"
    t.string   "keywords"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactdata", force: true do |t|
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

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
