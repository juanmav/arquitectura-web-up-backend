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

ActiveRecord::Schema.define(version: 20140608045810) do

  create_table "captains", id: false, force: true do |t|
    t.integer "flight_id"
    t.integer "pilot_id"
  end

  create_table "flights", force: true do |t|
    t.integer  "day_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passengers", id: false, force: true do |t|
    t.integer "flight_id"
    t.integer "skydiver_id"
  end

  create_table "pilots", force: true do |t|
    t.string   "name"
    t.string   "last"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planes", force: true do |t|
    t.string   "domain"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", force: true do |t|
    t.string   "name"
    t.string   "ip"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skydivers", force: true do |t|
    t.string   "name"
    t.string   "last"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transports", id: false, force: true do |t|
    t.integer "flight_id"
    t.integer "plane_id"
  end

end
