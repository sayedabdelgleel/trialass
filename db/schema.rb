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

ActiveRecord::Schema.define(:version => 20130206114936) do

  create_table "boats", :id => false, :force => true do |t|
    t.string   "name"
    t.string   "model_name"
    t.integer  "model_year",     :default => 0
    t.string   "description"
    t.integer  "activated",      :default => 0
    t.string   "hull"
    t.integer  "length_ft",      :default => 0
    t.integer  "cabins",         :default => 0
    t.integer  "berths",         :default => 0
    t.integer  "heads",          :default => 0
    t.integer  "max_persons",    :default => 0
    t.integer  "fuel_capacity",  :default => 0
    t.integer  "water_capacity", :default => 0
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", :id => false, :force => true do |t|
    t.string   "name"
    t.integer  "starting_price",      :default => 0
    t.string   "tagline"
    t.text     "introduction"
    t.string   "weather_months"
    t.integer  "weather_temperature", :default => 0
    t.integer  "weather_high",        :default => 0
    t.integer  "weather_low",         :default => 0
    t.integer  "activated",           :default => 0
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
