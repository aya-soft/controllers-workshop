# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_23_133637) do

  create_table "note_comment_votes", force: :cascade do |t|
    t.integer "note_comment_id"
    t.integer "user_id"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["note_comment_id"], name: "index_note_comment_votes_on_note_comment_id"
    t.index ["user_id"], name: "index_note_comment_votes_on_user_id"
  end

  create_table "note_comments", force: :cascade do |t|
    t.integer "note_id"
    t.integer "user_id"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["note_id"], name: "index_note_comments_on_note_id"
    t.index ["user_id"], name: "index_note_comments_on_user_id"
  end

  create_table "note_votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "note_id"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["note_id"], name: "index_note_votes_on_note_id"
    t.index ["user_id"], name: "index_note_votes_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_id"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
