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

ActiveRecord::Schema.define(version: 2019_08_27_152518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "circle_members", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "circle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["circle_id"], name: "index_circle_members_on_circle_id"
    t.index ["user_id"], name: "index_circle_members_on_user_id"
  end

  create_table "circle_updates", force: :cascade do |t|
    t.bigint "circle_id"
    t.bigint "update_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["circle_id"], name: "index_circle_updates_on_circle_id"
    t.index ["update_id"], name: "index_circle_updates_on_update_id"
  end

  create_table "circles", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_circles_on_user_id"
  end

  create_table "conversation_members", force: :cascade do |t|
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_conversation_members_on_conversation_id"
    t.index ["user_id"], name: "index_conversation_members_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.date "date"
    t.integer "hour"
    t.boolean "booked"
    t.bigint "user_id"
    t.bigint "booker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booker_id"], name: "index_slots_on_booker_id"
    t.index ["user_id"], name: "index_slots_on_user_id"
  end

  create_table "status_updates", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "photo"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_status_updates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "circle_members", "circles"
  add_foreign_key "circle_members", "users"
  add_foreign_key "circle_updates", "circles"
  add_foreign_key "circle_updates", "status_updates", column: "update_id"
  add_foreign_key "circles", "users"
  add_foreign_key "conversation_members", "conversations"
  add_foreign_key "conversation_members", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "slots", "users"
  add_foreign_key "slots", "users", column: "booker_id"
  add_foreign_key "status_updates", "users"
end
