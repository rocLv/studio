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

ActiveRecord::Schema.define(version: 2021_09_06_084900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "courses", id: :bigint, default: -> { "nextval('cources_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "name"
    t.integer "lessons_count"
    t.integer "students_count"
    t.integer "period"
    t.integer "price_cent"
    t.integer "current_price_cent"
    t.integer "coach_id"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "background_src"
  end

  create_table "curriculums", force: :cascade do |t|
    t.string "title"
    t.string "phase"
    t.integer "cource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub_curriculums", force: :cascade do |t|
    t.string "title"
    t.integer "duration"
    t.bigint "curriculum_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["curriculum_id"], name: "index_sub_curriculums_on_curriculum_id"
  end

  create_table "task_catalogs", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id"
  end

  create_table "task_options", force: :cascade do |t|
    t.integer "task_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "answer", default: 0
    t.integer "weight"
    t.string "content"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "hint"
    t.string "desc"
    t.string "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "pre_script"
    t.string "after_script"
    t.integer "weight"
    t.string "solution"
    t.string "solution_file"
    t.string "solution_md"
    t.string "text"
    t.string "subtext"
    t.string "test_type"
    t.string "after"
    t.string "before", default: [], array: true
    t.string "tests", default: [], array: true
    t.integer "task_catalog_id"
  end

  create_table "test_sessions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_catalog_id"
    t.integer "status"
    t.hstore "answer_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "email", default: "", null: false
    t.string "mobile", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "sub_curriculums", "curriculums"
end
