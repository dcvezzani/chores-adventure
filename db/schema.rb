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

ActiveRecord::Schema.define(version: 20131103051306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignment_family_members", force: true do |t|
    t.integer  "assignment_id"
    t.integer  "family_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignment_family_members", ["assignment_id"], name: "index_assignment_family_members_on_assignment_id", using: :btree
  add_index "assignment_family_members", ["family_member_id"], name: "index_assignment_family_members_on_family_member_id", using: :btree

  create_table "assignments", force: true do |t|
    t.integer  "chore_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["chore_id"], name: "index_assignments_on_chore_id", using: :btree

  create_table "chore_needs", force: true do |t|
    t.integer  "chore_id"
    t.integer  "need_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chore_needs", ["chore_id"], name: "index_chore_needs_on_chore_id", using: :btree
  add_index "chore_needs", ["need_id"], name: "index_chore_needs_on_need_id", using: :btree

  create_table "chore_rewards", force: true do |t|
    t.integer  "chore_id"
    t.integer  "reward_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chore_rewards", ["chore_id"], name: "index_chore_rewards_on_chore_id", using: :btree
  add_index "chore_rewards", ["reward_id"], name: "index_chore_rewards_on_reward_id", using: :btree

  create_table "chores", force: true do |t|
    t.datetime "assigned_at"
    t.datetime "completed_at"
    t.datetime "due_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_members", force: true do |t|
    t.string   "name"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "needs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.text     "content"
    t.integer  "author_id"
    t.integer  "item_id"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["author_id"], name: "index_notes_on_author_id", using: :btree
  add_index "notes", ["item_id"], name: "index_notes_on_item_id", using: :btree

  create_table "rewards", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "weight"
    t.integer  "author_id"
    t.integer  "item_id"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["author_id"], name: "index_votes_on_author_id", using: :btree
  add_index "votes", ["item_id"], name: "index_votes_on_item_id", using: :btree

end
