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

ActiveRecord::Schema[6.1].define(version: 20170925183102) do

  create_table "campaigns", force: :cascade do |t|
    t.string "cid"
    t.text "form_template"
    t.text "result_template"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "note"
    t.index ["cid"], name: "index_campaigns_on_cid", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "cid"
    t.string "pid"
    t.string "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fingerprint"
    t.string "remote_ip"
    t.text "query_string"
    t.string "request_method"
    t.text "request_path"
    t.text "request_uri"
    t.text "http_user_agent"
    t.string "http_dnt"
    t.text "http_referer"
    t.text "http_accept"
    t.text "http_accept_encoding"
    t.text "http_accept_language"
    t.text "params"
    t.index ["action"], name: "index_events_on_action"
    t.index ["cid"], name: "index_events_on_cid"
    t.index ["fingerprint"], name: "index_events_on_fingerprint"
    t.index ["http_accept"], name: "index_events_on_http_accept"
    t.index ["http_accept_encoding"], name: "index_events_on_http_accept_encoding"
    t.index ["http_accept_language"], name: "index_events_on_http_accept_language"
    t.index ["http_dnt"], name: "index_events_on_http_dnt"
    t.index ["http_referer"], name: "index_events_on_http_referer"
    t.index ["http_user_agent"], name: "index_events_on_http_user_agent"
    t.index ["params"], name: "index_events_on_params"
    t.index ["pid"], name: "index_events_on_pid"
    t.index ["query_string"], name: "index_events_on_query_string"
    t.index ["remote_ip"], name: "index_events_on_remote_ip"
    t.index ["request_method"], name: "index_events_on_request_method"
    t.index ["request_path"], name: "index_events_on_request_path"
    t.index ["request_uri"], name: "index_events_on_request_uri"
  end

end
