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

ActiveRecord::Schema.define(version: 2019_06_09_224433) do

  create_table "achievements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_achievements_on_user_id"
  end

  create_table "awards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title", default: ""
    t.text "description"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_awards_on_user_id"
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "description", default: ""
    t.string "legal_status", default: ""
    t.string "address", default: ""
    t.bigint "domain_id"
    t.integer "status"
    t.date "exist_since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domain_id"], name: "index_companies_on_domain_id"
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "iso"
    t.string "name", null: false
    t.string "nicename", default: ""
    t.string "iso3", default: ""
    t.string "numcode", default: ""
    t.string "phonecode", default: ""
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "domains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "parent_id"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_domains_on_parent_id"
  end

  create_table "educations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "school_id"
    t.bigint "user_id"
    t.string "degree"
    t.date "graduation_year"
    t.text "description"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_educations_on_school_id"
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "experiences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "title"
    t.bigint "company_id"
    t.bigint "user_id"
    t.text "description"
    t.date "started_at"
    t.date "ended_at"
    t.boolean "still_there", default: false
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_experiences_on_company_id"
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "hobbies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "icon", default: ""
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies_users", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "hobby_id", null: false
    t.bigint "user_id", null: false
    t.index ["hobby_id", "user_id"], name: "index_hobbies_users_on_hobby_id_and_user_id"
    t.index ["user_id", "hobby_id"], name: "index_hobbies_users_on_user_id_and_hobby_id"
  end

  create_table "languages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "status", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_resumes", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "resume_id", null: false
    t.index ["language_id", "resume_id"], name: "index_languages_resumes_on_language_id_and_resume_id"
    t.index ["resume_id", "language_id"], name: "index_languages_resumes_on_resume_id_and_language_id"
  end

  create_table "resumes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.text "description"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "resumes_templates", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.bigint "template_id", null: false
    t.index ["resume_id", "template_id"], name: "index_resumes_templates_on_resume_id_and_template_id"
    t.index ["template_id", "resume_id"], name: "index_resumes_templates_on_template_id_and_resume_id"
  end

  create_table "schools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "legal_status"
    t.string "address"
    t.bigint "country_id"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_schools_on_country_id"
  end

  create_table "skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills_users", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "skill_id", null: false
    t.bigint "user_id", null: false
    t.integer "level", default: 0
    t.index ["skill_id", "user_id"], name: "index_skills_users_on_skill_id_and_user_id"
    t.index ["user_id", "skill_id"], name: "index_skills_users_on_user_id_and_skill_id"
  end

  create_table "templates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "domain_id"
    t.integer "views", default: 1
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domain_id"], name: "index_templates_on_domain_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "firstname"
    t.string "email"
    t.string "title", default: ""
    t.string "presentation", default: ""
    t.date "birth_date"
    t.string "birth_place"
    t.bigint "country_id"
    t.string "address"
    t.integer "views", default: 0
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_slug", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achievements", "users"
  add_foreign_key "awards", "users"
  add_foreign_key "educations", "schools"
  add_foreign_key "experiences", "companies"
  add_foreign_key "experiences", "users"
  add_foreign_key "resumes", "users"
  add_foreign_key "schools", "countries"
  add_foreign_key "templates", "domains", on_update: :cascade, on_delete: :cascade
  add_foreign_key "users", "countries"
end
