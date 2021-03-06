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

ActiveRecord::Schema.define(version: 20180222213439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "content"
    t.integer "path1_id"
    t.integer "path2_id"
    t.integer "pathPrev_id"
    t.boolean "lowest", default: true
    t.datetime "created_at", null: false
  end

  create_table "paths", force: :cascade do |t|
    t.text "content"
    t.boolean "used", default: false
    t.datetime "created_at", null: false
  end

  create_table "plots", force: :cascade do |t|
    t.bigint "path_id"
    t.bigint "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_plots_on_chapter_id"
    t.index ["path_id"], name: "index_plots_on_path_id"
  end

end
