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

ActiveRecord::Schema.define(version: 20180216104935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "studioconnections", force: :cascade do |t|
    t.string "name"
    t.date "time"
    t.bigint "voiceovers_id"
    t.bigint "agents_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agents_id"], name: "index_studioconnections_on_agents_id"
    t.index ["voiceovers_id"], name: "index_studioconnections_on_voiceovers_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "subscribed"
    t.string "stripeid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voiceovers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "street"
    t.string "city_code"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "telephone"
    t.string "mobil"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.string "google"
    t.string "language"
    t.string "origin"
    t.string "accent"
    t.string "foreign_languages"
    t.string "gender"
    t.string "voice_age"
    t.string "pitch"
    t.string "adjectives"
    t.string "production_categories"
    t.string "famous_actor"
    t.string "homstudio"
    t.string "studio_connect"
    t.string "studio_rate"
    t.string "payment"
    t.string "currencies"
    t.string "notifications"
    t.string "membership_status"
    t.string "view_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voicesamples", force: :cascade do |t|
    t.string "userID"
    t.string "productioncategory"
    t.string "audiofile"
    t.string "client"
    t.bigint "voiceover_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["voiceover_id"], name: "index_voicesamples_on_voiceover_id"
  end

  add_foreign_key "studioconnections", "agents", column: "agents_id"
  add_foreign_key "studioconnections", "voiceovers", column: "voiceovers_id"
  add_foreign_key "voicesamples", "voiceovers"
end
