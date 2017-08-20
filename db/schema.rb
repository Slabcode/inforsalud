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

ActiveRecord::Schema.define(version: 20170820013411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
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
    t.string "username", null: false
    t.string "name", null: false
    t.string "lastname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authy_id"
    t.datetime "last_sign_in_with_authy"
    t.boolean "authy_enabled", default: false
    t.index ["authy_id"], name: "index_admins_on_authy_id"
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_admins_on_unlock_token", unique: true
  end

  create_table "attendeces", force: :cascade do |t|
    t.date "day", default: "2017-08-19", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendence_semester_student_subjects", force: :cascade do |t|
    t.bigint "attendece_id"
    t.bigint "semester_student_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attendece_id", "semester_student_subject_id"], name: "attendance_index", unique: true
    t.index ["attendece_id"], name: "index_attendence_semester_student_subjects_on_attendece_id"
    t.index ["semester_student_subject_id"], name: "index_20"
  end

  create_table "carrer_franchises", force: :cascade do |t|
    t.bigint "franchise_id"
    t.bigint "carrer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrer_id"], name: "index_carrer_franchises_on_carrer_id"
    t.index ["franchise_id", "carrer_id"], name: "index_carrer_franchises_on_franchise_id_and_carrer_id", unique: true
    t.index ["franchise_id"], name: "index_carrer_franchises_on_franchise_id"
  end

  create_table "carrer_students", force: :cascade do |t|
    t.bigint "carrer_working_day_id"
    t.bigint "user_id"
    t.integer "state", default: 0, null: false
    t.date "start", default: "2017-08-19", null: false
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrer_working_day_id", "user_id"], name: "my_index_1", unique: true
    t.index ["carrer_working_day_id"], name: "index_carrer_students_on_carrer_working_day_id"
    t.index ["user_id"], name: "index_carrer_students_on_user_id"
  end

  create_table "carrer_working_days", force: :cascade do |t|
    t.bigint "working_day_id"
    t.bigint "carrer_franchise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrer_franchise_id"], name: "index_carrer_working_days_on_carrer_franchise_id"
    t.index ["working_day_id", "carrer_franchise_id"], name: "my_index", unique: true
    t.index ["working_day_id"], name: "index_carrer_working_days_on_working_day_id"
  end

  create_table "carrers", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", default: "", null: false
    t.integer "semester_number", default: 1, null: false
    t.text "objective", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "franchises", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.decimal "grade_one", null: false
    t.decimal "grade_two", null: false
    t.decimal "grade_three", null: false
    t.bigint "semester_student_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_student_subject_id"], name: "index_grades_on_semester_student_subject_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "email", default: "", null: false
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
    t.string "name", null: false
    t.string "lastname", null: false
    t.string "mobile", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_partners_on_confirmation_token", unique: true
    t.index ["email"], name: "index_partners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_partners_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_partners_on_unlock_token", unique: true
    t.index ["user_id"], name: "index_partners_on_user_id", unique: true
  end

  create_table "payments", force: :cascade do |t|
    t.date "date", null: false
    t.string "description", default: "", null: false
    t.decimal "value", null: false
    t.integer "method", null: false
    t.text "file"
    t.bigint "semester_student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_student_id"], name: "index_payments_on_semester_student_id", unique: true
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.bigint "franchise_id"
    t.bigint "professor_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["franchise_id"], name: "index_places_on_franchise_id"
    t.index ["professor_subject_id"], name: "index_places_on_professor_subject_id", unique: true
  end

  create_table "professor_subjects", force: :cascade do |t|
    t.integer "quantity", null: false
    t.bigint "subject_timetable_id"
    t.bigint "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_professor_subjects_on_professor_id"
    t.index ["subject_timetable_id"], name: "index_professor_subjects_on_subject_timetable_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "email", default: "", null: false
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
    t.string "name", null: false
    t.string "lastname", null: false
    t.string "username", null: false
    t.string "mobile", null: false
    t.boolean "active", default: true
    t.text "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_professors_on_confirmation_token", unique: true
    t.index ["email"], name: "index_professors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_professors_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_professors_on_unlock_token", unique: true
  end

  create_table "scopes", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", default: "", null: false
    t.boolean "passed", default: true, null: false
    t.bigint "semester_student_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_student_subject_id"], name: "index_scopes_on_semester_student_subject_id"
  end

  create_table "semester_student_subjects", force: :cascade do |t|
    t.bigint "professor_subject_id"
    t.bigint "semester_student_id"
    t.boolean "poll", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_subject_id", "semester_student_id"], name: "my_index_5", unique: true
    t.index ["professor_subject_id"], name: "index_semester_student_subjects_on_professor_subject_id"
    t.index ["semester_student_id"], name: "index_semester_student_subjects_on_semester_student_id"
  end

  create_table "semester_students", force: :cascade do |t|
    t.string "year", default: "2017", null: false
    t.integer "period", default: 1, null: false
    t.boolean "passed", default: false, null: false
    t.boolean "payment", default: false, null: false
    t.bigint "carrer_student_id"
    t.bigint "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrer_student_id"], name: "index_semester_students_on_carrer_student_id"
    t.index ["semester_id"], name: "index_semester_students_on_semester_id"
    t.index ["year", "period", "carrer_student_id", "semester_id"], name: "my_index_2", unique: true
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", default: "", null: false
    t.integer "number", default: 0, null: false
    t.bigint "carrer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrer_id"], name: "index_semesters_on_carrer_id"
  end

  create_table "settings", force: :cascade do |t|
    t.integer "name", null: false
    t.boolean "value", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_grades", force: :cascade do |t|
    t.decimal "grade_one", null: false
    t.decimal "grade_two", null: false
    t.decimal "grade_three", null: false
    t.decimal "grade_four", null: false
    t.decimal "grade_five", null: false
    t.decimal "grade_six", null: false
    t.decimal "grade_seven", null: false
    t.decimal "grade_eight", null: false
    t.decimal "grade_nine", null: false
    t.bigint "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_sub_grades_on_grade_id"
  end

  create_table "subject_timetables", force: :cascade do |t|
    t.string "year", default: "2017", null: false
    t.integer "period", default: 0, null: false
    t.bigint "subject_id"
    t.bigint "timetable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_subject_timetables_on_subject_id"
    t.index ["timetable_id"], name: "index_subject_timetables_on_timetable_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.text "description", default: "", null: false
    t.bigint "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_subjects_on_semester_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name", null: false
    t.integer "period", default: 1, null: false
    t.text "test"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_tests_on_subject_id"
  end

  create_table "timetables", force: :cascade do |t|
    t.integer "start_time", null: false
    t.integer "end_time", null: false
    t.bigint "working_day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["working_day_id"], name: "index_timetables_on_working_day_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
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
    t.string "name", null: false
    t.string "lastname", null: false
    t.string "username", null: false
    t.string "mobile", null: false
    t.text "avatar"
    t.bigint "franchise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["franchise_id"], name: "index_users_on_franchise_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "working_days", force: :cascade do |t|
    t.integer "day", default: 0, null: false
    t.integer "time", default: 0, null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", default: "", null: false
    t.text "file"
    t.bigint "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_works_on_professor_id"
  end

  add_foreign_key "attendence_semester_student_subjects", "attendeces"
  add_foreign_key "attendence_semester_student_subjects", "semester_student_subjects"
  add_foreign_key "carrer_franchises", "carrers"
  add_foreign_key "carrer_franchises", "franchises"
  add_foreign_key "carrer_students", "carrer_working_days"
  add_foreign_key "carrer_students", "users"
  add_foreign_key "carrer_working_days", "carrer_franchises"
  add_foreign_key "carrer_working_days", "working_days"
  add_foreign_key "grades", "semester_student_subjects"
  add_foreign_key "partners", "users"
  add_foreign_key "payments", "semester_students"
  add_foreign_key "places", "franchises"
  add_foreign_key "places", "professor_subjects"
  add_foreign_key "professor_subjects", "professors"
  add_foreign_key "professor_subjects", "subject_timetables"
  add_foreign_key "scopes", "semester_student_subjects"
  add_foreign_key "semester_student_subjects", "professor_subjects"
  add_foreign_key "semester_student_subjects", "semester_students"
  add_foreign_key "semester_students", "carrer_students"
  add_foreign_key "semester_students", "semesters"
  add_foreign_key "semesters", "carrers"
  add_foreign_key "sub_grades", "grades"
  add_foreign_key "subject_timetables", "subjects"
  add_foreign_key "subject_timetables", "timetables"
  add_foreign_key "subjects", "semesters"
  add_foreign_key "tests", "subjects"
  add_foreign_key "timetables", "working_days"
  add_foreign_key "works", "professors"
end
