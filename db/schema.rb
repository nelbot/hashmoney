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

ActiveRecord::Schema.define(version: 20150508214320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
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
    t.string   "username"
    t.string   "target_industry"
    t.string   "target_hashtag"
    t.integer  "target_age_group"
    t.string   "target_demographic"
    t.string   "target_location"
  end

  add_index "brands", ["email"], name: "index_brands_on_email", unique: true, using: :btree
  add_index "brands", ["reset_password_token"], name: "index_brands_on_reset_password_token", unique: true, using: :btree

  create_table "brands_industries", id: false, force: :cascade do |t|
    t.integer "brand_id",    null: false
    t.integer "industry_id", null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "industry"
    t.string   "hashtag"
    t.integer  "age_group"
    t.string   "demographic"
    t.string   "location"
    t.datetime "expiration_date"
    t.integer  "brand_id"
    t.boolean  "completed"
  end

  create_table "campaigns_influencers", id: false, force: :cascade do |t|
    t.integer "campaign_id",   null: false
    t.integer "influencer_id", null: false
  end

  add_index "campaigns_influencers", ["campaign_id", "influencer_id"], name: "index_campaigns_influencers_on_campaign_id_and_influencer_id", using: :btree
  add_index "campaigns_influencers", ["influencer_id", "campaign_id"], name: "index_campaigns_influencers_on_influencer_id_and_campaign_id", using: :btree

  create_table "industries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "influencers", force: :cascade do |t|
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
    t.string   "username"
    t.string   "industry"
    t.integer  "age"
    t.string   "location"
    t.string   "occupation"
  end

  add_index "influencers", ["email"], name: "index_influencers_on_email", unique: true, using: :btree
  add_index "influencers", ["reset_password_token"], name: "index_influencers_on_reset_password_token", unique: true, using: :btree

end
