# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_29_085626) do
  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.text "content"
    t.text "youtubeUrl"
    t.text "youtubeKey"
    t.text "youtubeSaveImg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "market1s", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.boolean "status"
    t.text "content"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "market2s", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.boolean "status"
    t.text "content"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "market3s", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.boolean "status"
    t.text "content"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "plans", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.boolean "status"
    t.text "content"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.boolean "status"
    t.text "content"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

end
