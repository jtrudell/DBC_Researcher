# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151112153045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "location"
    t.integer  "num_of_students"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "experiments", force: :cascade do |t|
    t.integer  "proposal_id"
    t.integer  "cohort_id"
    t.integer  "user_id"
    t.string   "experiment_description"
    t.string   "required_supplies_for_experiment"
    t.string   "goal_description"
    t.string   "conclusions"
    t.boolean  "completed"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "observations", force: :cascade do |t|
    t.integer  "experiment_id",    null: false
    t.string   "observation_text", null: false
    t.integer  "user_id",          null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.string   "title"
    t.string   "problem_description"
    t.string   "hypothesis"
    t.integer  "user_id"
    t.boolean  "approved"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                            null: false
    t.string   "title",                           null: false
    t.string   "email",                           null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
