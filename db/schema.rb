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

ActiveRecord::Schema.define(version: 20150814071723) do

  create_table "dungeons", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.integer  "map_id",     limit: 4,     null: false
    t.integer  "stuff_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "width",      limit: 4, null: false
    t.integer  "height",     limit: 4, null: false
    t.integer  "stuff_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "map_tiles", force: :cascade do |t|
    t.integer  "map_id",     limit: 4, null: false
    t.integer  "x_pos",      limit: 4, null: false
    t.integer  "y_pos",      limit: 4, null: false
    t.integer  "tile_id",    limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mapobject_serifs", force: :cascade do |t|
    t.integer  "mapobject_id", limit: 4, null: false
    t.integer  "serif_id",     limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mapobjects", force: :cascade do |t|
    t.boolean  "movable",    limit: 1, default: false
    t.boolean  "talkable",   limit: 1, default: false
    t.integer  "stuff_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maps", force: :cascade do |t|
    t.text     "name",         limit: 65535
    t.integer  "width_tiles",  limit: 4,     default: 0
    t.integer  "height_tiles", limit: 4,     default: 0
    t.integer  "stuff_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serifs", force: :cascade do |t|
    t.text     "text",       limit: 65535
    t.integer  "stuff_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stuffs", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiles", force: :cascade do |t|
    t.integer  "image_id",   limit: 4, null: false
    t.integer  "stuff_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
