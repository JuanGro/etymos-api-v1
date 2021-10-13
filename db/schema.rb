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

ActiveRecord::Schema.define(version: 2018_10_13_045351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "etymologies", force: :cascade do |t|
    t.string "type_etymology"
    t.string "language"
    t.string "graeco_latin_etymology"
    t.string "pattern"
    t.string "meaning_etymology"
    t.string "image_etymology"
    t.string "etymos_version_etymology"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "word_option"
    t.boolean "correct"
    t.bigint "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_options_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "phrase"
    t.string "etymos_version_test"
    t.bigint "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_id"], name: "index_tests_on_word_id"
  end

  create_table "word_etymologies", force: :cascade do |t|
    t.integer "etymology_order"
    t.bigint "word_id"
    t.bigint "etymology_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etymology_id"], name: "index_word_etymologies_on_etymology_id"
    t.index ["word_id"], name: "index_word_etymologies_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "word_word"
    t.string "meaning_word"
    t.string "image_word"
    t.string "etymos_version_word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "options", "tests"
  add_foreign_key "tests", "words"
  add_foreign_key "word_etymologies", "etymologies"
  add_foreign_key "word_etymologies", "words"
end
