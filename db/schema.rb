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

ActiveRecord::Schema.define(version: 2018_04_26_190711) do

  create_table "infos", force: :cascade do |t|
    t.string "employeeno"
<<<<<<< HEAD
    t.string "address"
    t.string "phone"
    t.string "nationalins"
    t.string "nextofkin"
    t.string "kinnumber"
    t.integer "user_id"
=======
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "contact"
    t.string "nextofkin"
    t.string "kinnumber"
>>>>>>> 6178b45cc6cd325010da6b71171f035b3e6e3c6d
    t.string "ninumber"
    t.string "carman"
    t.string "carmodel"
    t.string "licencep"
    t.string "adaptions"
<<<<<<< HEAD
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
>>>>>>> 6178b45cc6cd325010da6b71171f035b3e6e3c6d
    t.index ["user_id", "created_at"], name: "index_infos_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_infos_on_user_id"
  end

  create_table "leaves", force: :cascade do |t|
    t.string "reason"
    t.date "startdate"
    t.date "enddate"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.string "doc"
  end

end
