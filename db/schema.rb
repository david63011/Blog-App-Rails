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

ActiveRecord::Schema[7.0].define(version: 2023_02_28_192612) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "create_posts_id"
    t.index ["create_posts_id"], name: "index_comments_on_create_posts_id"
  end

  create_table "create_posts", force: :cascade do |t|
    t.string "title"
    t.string "text"
    t.integer "comments_counter"
    t.integer "likes_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id"
    t.index ["author_id"], name: "index_create_posts_on_author_id"
  end

  create_table "create_users", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "bio"
    t.integer "posts_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id"
    t.bigint "create_posts_id"
    t.index ["author_id"], name: "index_likes_on_author_id"
    t.index ["create_posts_id"], name: "index_likes_on_create_posts_id"
  end

  add_foreign_key "comments", "create_posts", column: "create_posts_id"
  add_foreign_key "create_posts", "create_users", column: "author_id"
  add_foreign_key "likes", "create_posts", column: "create_posts_id"
  add_foreign_key "likes", "create_users", column: "author_id"
end
