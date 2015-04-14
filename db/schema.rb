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

ActiveRecord::Schema.define(:version => 20150413222946) do

  create_table "cmes", :force => true do |t|
    t.string   "month"
    t.string   "product"
    t.decimal  "last",        :precision => 8, :scale => 2
    t.decimal  "change",      :precision => 8, :scale => 2
    t.decimal  "priorsettle", :precision => 8, :scale => 2
    t.decimal  "open",        :precision => 8, :scale => 2
    t.decimal  "high",        :precision => 8, :scale => 2
    t.decimal  "low",         :precision => 8, :scale => 2
    t.decimal  "volume",      :precision => 8, :scale => 2
    t.string   "hilowlimit"
    t.string   "updated"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

end
