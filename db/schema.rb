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

ActiveRecord::Schema.define(version: 20170215054721) do

  create_table "events", force: :cascade do |t|
    t.string   "fid"
    t.string   "remote_ip"
    t.string   "request_method"
    t.text     "request_path"
    t.text     "query_string"
    t.text     "request_uri"
    t.text     "http_user_agent"
    t.text     "http_dnt"
    t.text     "http_accept"
    t.text     "http_accept_encoding"
    t.text     "http_accept_language"
    t.text     "params"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["fid"], name: "index_events_on_fid"
    t.index ["remote_ip"], name: "index_events_on_remote_ip"
    t.index ["request_method"], name: "index_events_on_request_method"
    t.index ["request_path"], name: "index_events_on_request_path"
  end

end
