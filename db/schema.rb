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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_183817) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "start_date"
    t.integer "duration", default: 30
    t.boolean "is_available", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_availabilities_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "com_means", force: :cascade do |t|
    t.string "communication_mean"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "meeting_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_feedbacks_on_meeting_id"
  end

  create_table "join_table_user_cars", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "car_id"
    t.boolean "is_coach", default: false
    t.boolean "is_driver", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_join_table_user_cars_on_car_id"
    t.index ["user_id"], name: "index_join_table_user_cars_on_user_id"
  end

  create_table "join_table_user_com_means", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "com_mean_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["com_mean_id"], name: "index_join_table_user_com_means_on_com_mean_id"
    t.index ["user_id"], name: "index_join_table_user_com_means_on_user_id"
  end

  create_table "join_table_user_tracks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "track_id"
    t.boolean "is_coach", default: false
    t.boolean "is_driver", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_join_table_user_tracks_on_track_id"
    t.index ["user_id"], name: "index_join_table_user_tracks_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.bigint "coach_id"
    t.bigint "driver_id"
    t.bigint "availability_id"
    t.integer "duration"
    t.integer "meeting_type"
    t.integer "meeting_status", default: 0
    t.string "video_url"
    t.bigint "com_mean_id"
    t.bigint "car_id"
    t.bigint "track_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["availability_id"], name: "index_meetings_on_availability_id"
    t.index ["car_id"], name: "index_meetings_on_car_id"
    t.index ["coach_id"], name: "index_meetings_on_coach_id"
    t.index ["com_mean_id"], name: "index_meetings_on_com_mean_id"
    t.index ["driver_id"], name: "index_meetings_on_driver_id"
    t.index ["track_id"], name: "index_meetings_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.text "awards"
    t.integer "price_per_hour"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "meetings", "users", column: "coach_id"
  add_foreign_key "meetings", "users", column: "driver_id"
end
