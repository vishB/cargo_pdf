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

ActiveRecord::Schema.define(version: 20161022181454) do

  create_table "biltis", force: :cascade do |t|
    t.string   "office"
    t.string   "h_0"
    t.string   "consigner"
    t.string   "consignee"
    t.integer  "l_r_no"
    t.string   "bar_code"
    t.datetime "booking_date"
    t.string   "invoice_no"
    t.string   "goods"
    t.boolean  "frieght"
    t.float    "actual_weight"
    t.float    "changed_weight"
    t.float    "goods_value"
    t.integer  "transport_mode"
    t.string   "tin_no"
    t.float    "total"
    t.integer  "client_id"
    t.integer  "company_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "biltis", ["client_id"], name: "index_biltis_on_client_id"
  add_index "biltis", ["company_id"], name: "index_biltis_on_company_id"

end
