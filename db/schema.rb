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

ActiveRecord::Schema.define(version: 20160312173022) do

  create_table "modulos", force: :cascade do |t|
    t.string   "nome",        limit: 255
    t.string   "cognome",     limit: 255
    t.float    "annolaurea",  limit: 24
    t.date     "datanascita"
    t.string   "luogo",       limit: 255
    t.string   "indirizzo",   limit: 255
    t.integer  "cap",         limit: 4
    t.string   "citta",       limit: 255
    t.float    "telefono",    limit: 24
    t.float    "cellulare",   limit: 24
    t.string   "email",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
