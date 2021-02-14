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

ActiveRecord::Schema.define(version: 2021_02_14_024117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_comments", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_comments_on_project_id"
    t.index ["user_id"], name: "index_project_comments_on_user_id"
  end

  create_table "project_folders", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_proj"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_project_folders_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.text "description"
    t.string "project_link"
    t.string "git_hub"
    t.string "video"
    t.bigint "project_folder_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_folder_id"], name: "index_projects_on_project_folder_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "profession"
    t.text "bio"
    t.text "image"
    t.string "linked_in"
    t.string "twitter"
    t.string "instagram"
    t.string "git_hub"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "project_comments", "projects"
  add_foreign_key "project_comments", "users"
  add_foreign_key "project_folders", "users"
  add_foreign_key "projects", "project_folders"
end
