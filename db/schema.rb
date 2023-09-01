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

ActiveRecord::Schema[7.0].define(version: 2023_09_01_021824) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "First_name"
    t.string "Last_name"
    t.string "Email"
    t.string "Password_digest"
    t.string "Profile_img"
    t.string "Industry"
    t.string "Job_title"
    t.string "Bio"
    t.integer "Weekly_mile_goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
