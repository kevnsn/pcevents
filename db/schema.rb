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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130715200820) do

  create_table "pcevents", :force => true do |t|
    t.string   "location"
    t.string   "address"
    t.integer  "zipcode"
    t.text     "description"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.datetime "eventtime"
    t.string   "city"
    t.decimal  "lng",         :precision => 15, :scale => 10
    t.decimal  "lat",         :precision => 15, :scale => 10
  end

  add_index "pcevents", ["lat", "lng"], :name => "index_pcevents_on_lat_and_lng"
  add_index "pcevents", ["lat"], :name => "index_pcevents_on_lat"
  add_index "pcevents", ["lng"], :name => "index_pcevents_on_lng"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
