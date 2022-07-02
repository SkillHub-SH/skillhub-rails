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

ActiveRecord::Schema.define(version: 2022_07_02_011658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "contests", force: :cascade do |t|
    t.integer "number_of_problems", null: false
    t.string "name", null: false
    t.string "level", default: "junior", null: false
    t.text "description"
    t.datetime "start_at", null: false
    t.datetime "end_at", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_contests_on_company_id"
  end

  create_table "developers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.text "bio"
    t.string "facebook_link"
    t.string "twitter_link"
    t.string "linkedin_link"
    t.string "github_link"
    t.string "stackoverflow_link"
    t.string "bersonal_website_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_developers_on_reset_password_token", unique: true
    t.index ["username"], name: "index_developers_on_username", unique: true
  end

  create_table "jwt_denylists", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jti"], name: "index_jwt_denylists_on_jti"
  end

  create_table "problems", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.float "time_limit", null: false
    t.integer "memory_limit", null: false
    t.integer "submitted_by", default: 0
    t.string "difficullty", default: "Medium"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id"
    t.bigint "contest_id"
    t.bigint "topic_id"
    t.index ["company_id"], name: "index_problems_on_company_id"
    t.index ["contest_id"], name: "index_problems_on_contest_id"
    t.index ["topic_id"], name: "index_problems_on_topic_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string "title", default: "Newbie", null: false
    t.float "score", default: 0.0, null: false
    t.string "color", default: "Grey", null: false
    t.bigint "developer_id"
    t.index ["developer_id"], name: "index_ranks_on_developer_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.text "source_code", null: false
    t.integer "memory_limit", null: false
    t.float "time_limit", null: false
    t.string "status", default: "In Queue"
    t.string "token", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "developer_id"
    t.bigint "problem_id"
    t.index ["developer_id"], name: "index_submissions_on_developer_id"
    t.index ["problem_id"], name: "index_submissions_on_problem_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
