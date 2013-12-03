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

ActiveRecord::Schema.define(version: 20131201020507) do

  create_table "resource_forks", force: true do |t|
    t.string   "file_name"
    t.string   "mac_creator"
    t.string   "mac_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resource_types", force: true do |t|
    t.integer  "resource_fork_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resource_types", ["resource_fork_id"], name: "index_resource_types_on_resource_fork_id"

  create_table "resources", force: true do |t|
    t.integer  "resource_type_id"
    t.integer  "resource_id"
    t.string   "name"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resources", ["resource_type_id"], name: "index_resources_on_resource_type_id"

end
