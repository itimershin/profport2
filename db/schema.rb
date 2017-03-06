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

ActiveRecord::Schema.define(version: 20170304105015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.text     "description",                          null: false
    t.integer  "status",                   default: 0
    t.integer  "portfolio_competences_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["portfolio_competences_id"], name: "index_achievements_on_portfolio_competences_id", using: :btree
  end

  create_table "author_books", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "book_id"
    t.float    "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id", "book_id"], name: "author_book_uniq", unique: true, using: :btree
    t.index ["author_id"], name: "index_author_books_on_author_id", using: :btree
    t.index ["book_id"], name: "index_author_books_on_book_id", using: :btree
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competences", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolio_competences", force: :cascade do |t|
    t.integer  "competence_id"
    t.integer  "portfolio_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["competence_id"], name: "index_portfolio_competences_on_competence_id", using: :btree
    t.index ["portfolio_id"], name: "index_portfolio_competences_on_portfolio_id", using: :btree
  end

  create_table "portfolios", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_portfolios_on_user_id", using: :btree
    t.index ["user_id"], name: "users_uniq_field", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           limit: 50, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "password_digest"
  end

  add_foreign_key "achievements", "portfolio_competences", column: "portfolio_competences_id"
  add_foreign_key "author_books", "authors"
  add_foreign_key "author_books", "books"
  add_foreign_key "portfolio_competences", "competences"
  add_foreign_key "portfolio_competences", "portfolios"
  add_foreign_key "portfolios", "users"
end
