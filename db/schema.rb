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

ActiveRecord::Schema.define(version: 20161027084008) do

  create_table "animals", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "location",    limit: 255
    t.integer  "age",         limit: 4
    t.text     "description", limit: 65535
    t.string   "image",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "photos",      limit: 255
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "address",    limit: 65535
    t.string   "gender",     limit: 255
    t.integer  "age",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "javascript_learnings", force: :cascade do |t|
    t.string   "function_name", limit: 255
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "minimum",       limit: 4
    t.integer  "maximum",       limit: 4
    t.string   "state",         limit: 255
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id",  limit: 4
    t.integer  "items",        limit: 4
    t.float    "total",        limit: 24
    t.string   "payment_mode", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "address",    limit: 65535
    t.string   "gender",     limit: 255
    t.integer  "age",        limit: 4
    t.string   "country",    limit: 255
    t.string   "state",      limit: 255
    t.string   "city",       limit: 255
    t.boolean  "is_disable"
    t.string   "skills",     limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.date     "birthdate"
    t.string   "caste",      limit: 255
    t.boolean  "terms",                    default: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "comment",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "price",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "records", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.date     "date"
    t.float    "amount",     limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "gender",     limit: 255
    t.text     "address",    limit: 65535
    t.integer  "age",        limit: 4
    t.string   "resume",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "video",      limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
