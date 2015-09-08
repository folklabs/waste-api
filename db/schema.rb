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

ActiveRecord::Schema.define(version: 20150908145842) do

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

  create_table "admin_users", force: :cascade do |t|
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
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "container_types", force: :cascade do |t|
    t.string   "shape"
    t.string   "size"
    t.string   "color"
    t.string   "lid_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "container_types_material_streams", id: false, force: :cascade do |t|
    t.integer "container_type_id",  null: false
    t.integer "material_stream_id", null: false
  end

  create_table "container_types_services", id: false, force: :cascade do |t|
    t.integer "container_type_id", null: false
    t.integer "service_id",        null: false
  end

  create_table "containers", force: :cascade do |t|
    t.integer  "uprn"
    t.integer  "container_type_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "containers", ["container_type_id"], name: "index_containers_on_container_type_id"
  add_index "containers", ["uprn"], name: "index_containers_on_uprn"

  create_table "events", force: :cascade do |t|
    t.string   "event_type"
    t.string   "image"
    t.integer  "uprn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "round_id"
  end

  add_index "events", ["round_id"], name: "index_events_on_round_id"
  add_index "events", ["uprn"], name: "index_events_on_uprn"

  create_table "material_streams", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "round_plans", force: :cascade do |t|
    t.string   "name"
    t.string   "schedule"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "round_plans_services", id: false, force: :cascade do |t|
    t.integer "round_plan_id", null: false
    t.integer "service_id",    null: false
  end

  add_index "round_plans_services", ["round_plan_id", "service_id"], name: "index_round_plans_services_on_round_plan_id_and_service_id"
  add_index "round_plans_services", ["service_id", "round_plan_id"], name: "index_round_plans_services_on_service_id_and_round_plan_id"

  create_table "rounds", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "round_plan_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "rounds", ["round_plan_id"], name: "index_rounds_on_round_plan_id"

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "frequency"
    t.integer  "esd_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
    t.text     "description"
  end

  add_index "services", ["organization_id"], name: "index_services_on_organization_id"

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
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
