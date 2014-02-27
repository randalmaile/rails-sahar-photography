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

ActiveRecord::Schema.define(:version => 20140227000538) do

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.date     "dateshot"
    t.string   "size"
    t.string   "resolution"
    t.string   "photourl"
    t.string   "clientname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "printitems", :force => true do |t|
    t.integer  "quantity"
    t.string   "finish"
    t.string   "dimensions"
    t.string   "papertype"
    t.decimal  "unitprice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "workitems", :force => true do |t|
    t.date     "eventdate"
    t.decimal  "unitprice"
    t.string   "jobtype"
    t.text     "description"
    t.integer  "workorder_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "workitems", ["workorder_id"], :name => "index_workitems_on_workorder_id"

  create_table "workorders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "country"
    t.string   "phone"
    t.text     "description"
    t.string   "jobtype"
    t.text     "comments"
    t.date     "eventdate"
    t.string   "orderstatus"
    t.decimal  "quotedprice"
  end

end
