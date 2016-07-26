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

ActiveRecord::Schema.define(version: 20160726071627) do

  create_table "announcements", force: :cascade do |t|
    t.datetime "date"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
    t.string   "title"
  end

  create_table "bids", force: :cascade do |t|
    t.string   "position"
    t.string   "department"
    t.datetime "deadline"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "campus_recuritments", force: :cascade do |t|
    t.string   "title"
    t.string   "position"
    t.string   "department"
    t.datetime "deadline"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "number"
    t.string   "workPosition"
    t.string   "dipolma"
    t.string   "attachment"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "company_news", force: :cascade do |t|
    t.string   "title"
    t.string   "shortDescription"
    t.string   "description"
    t.string   "content"
    t.string   "video_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.datetime "time"
    t.string   "editor"
    t.string   "editAuthor"
    t.string   "author"
  end

  create_table "employee_stories", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "image"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

  create_table "industry_news", force: :cascade do |t|
    t.string   "title"
    t.string   "shortDescription"
    t.string   "description"
    t.string   "content"
    t.string   "video_url"
    t.datetime "time"
    t.string   "editor"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "image"
    t.string   "editAuthor"
    t.string   "author"
  end

  create_table "pop_products", force: :cascade do |t|
    t.string   "name"
    t.string   "synopsis"
    t.string   "detail"
    t.integer  "type_id"
    t.integer  "category_id"
    t.string   "image"
    t.string   "attachement"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "attachment"
  end

  add_index "pop_products", ["category_id"], name: "index_pop_products_on_category_id"
  add_index "pop_products", ["type_id"], name: "index_pop_products_on_type_id"

  create_table "products", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "synopsis"
    t.string   "detail"
    t.integer  "Type_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
    t.integer  "category_id"
    t.string   "attachment"
  end

  create_table "q_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qand_as", force: :cascade do |t|
    t.string   "title"
    t.integer  "QType_id"
    t.string   "question"
    t.string   "answer"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_cases", force: :cascade do |t|
    t.integer  "Type_id"
    t.string   "image"
    t.string   "text"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

  add_index "service_cases", ["Type_id"], name: "index_service_cases_on_Type_id"

  create_table "society_recuritments", force: :cascade do |t|
    t.string   "title"
    t.string   "position"
    t.string   "department"
    t.datetime "deadline"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "number"
    t.string   "workPosition"
    t.string   "dipolma"
    t.string   "attachment"
  end

  create_table "types", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.integer  "Category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "year_reports", force: :cascade do |t|
    t.datetime "date"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

end
