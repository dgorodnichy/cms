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

ActiveRecord::Schema.define(version: 2018_12_13_204101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.bigint "attachment_id"
    t.index ["attachment_id"], name: "index_attachments_sections_on_attachment_id"
    t.index ["section_id"], name: "index_attachments_sections_on_section_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "slug"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "page_id"
    t.text "content"
    t.integer "template"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
