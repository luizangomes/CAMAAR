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

ActiveRecord::Schema[7.0].define(version: 2022_04_20_131634) do
  create_table "answers", force: :cascade do |t|
    t.string "code", null: false
    t.string "question", null: false
    t.integer "evaluation_id", null: false
    t.integer "members_id", null: false
    t.integer "cclass_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cclass_id"], name: "index_answers_on_cclass_id"
    t.index ["code"], name: "index_answers_on_code", unique: true
    t.index ["evaluation_id"], name: "index_answers_on_evaluation_id"
    t.index ["members_id"], name: "index_answers_on_members_id"
  end

  create_table "cclasses", force: :cascade do |t|
    t.string "code"
    t.string "semester"
    t.string "time"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_cclasses_on_subject_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.string "name", null: false
    t.string "semestre", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_evaluations_on_name", unique: true
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "members", force: :cascade do |t|
    t.string "name", null: false
    t.string "registration", null: false
    t.string "username", null: false
    t.string "occupation", null: false
    t.string "degree", null: false
    t.string "course", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registration"], name: "index_members_on_registration", unique: true
  end

  create_table "options", force: :cascade do |t|
    t.string "code", null: false
    t.string "text", null: false
    t.string "question", null: false
    t.integer "evaluation_id", null: false
    t.integer "members_id", null: false
    t.integer "cclass_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cclass_id"], name: "index_options_on_cclass_id"
    t.index ["code"], name: "index_options_on_code", unique: true
    t.index ["evaluation_id"], name: "index_options_on_evaluation_id"
    t.index ["members_id"], name: "index_options_on_members_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_subjects_on_code", unique: true
    t.index ["name"], name: "index_subjects_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "cclasses"
  add_foreign_key "answers", "evaluations"
  add_foreign_key "answers", "members", column: "members_id"
  add_foreign_key "cclasses", "subjects"
  add_foreign_key "options", "cclasses"
  add_foreign_key "options", "evaluations"
  add_foreign_key "options", "members", column: "members_id"
end
