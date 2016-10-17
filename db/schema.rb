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

ActiveRecord::Schema.define(version: 20161017100608) do

  create_table "activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "behavior"
    t.string   "object"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activities_on_user_id", using: :btree
  end

  create_table "bank_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "card_id"
    t.string   "password_disgest"
    t.float    "balance",          limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["card_id"], name: "index_bank_accounts_on_card_id", unique: true, using: :btree
  end

  create_table "book_tours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "tour_id"
    t.integer  "people_number"
    t.string   "requirement"
    t.boolean  "is_pay"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tour_id"], name: "index_book_tours_on_tour_id", using: :btree
    t.index ["user_id"], name: "index_book_tours_on_user_id", using: :btree
  end

  create_table "category_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_tours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "review_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_comments_on_review_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "images_tours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "tour_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["tour_id"], name: "index_images_tours_on_tour_id", using: :btree
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_likes_on_review_id", using: :btree
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "tour_id"
    t.integer  "star_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["tour_id"], name: "index_ratings_on_tour_id", using: :btree
    t.index ["user_id"], name: "index_ratings_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "category_review_id"
    t.string   "title"
    t.string   "content"
    t.boolean  "is_confirm"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["category_review_id"], name: "index_reviews_on_category_review_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "tours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "category_tour_id"
    t.string   "name"
    t.string   "schedule"
    t.string   "place_departure"
    t.string   "time"
    t.integer  "people_number"
    t.string   "transport"
    t.float    "price",            limit: 24
    t.string   "content"
    t.date     "time_start"
    t.float    "rating",           limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["category_tour_id"], name: "index_tours_on_category_tour_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.string   "name"
    t.boolean  "is_admin"
    t.datetime "remember_created_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "activities", "users"
  add_foreign_key "book_tours", "tours"
  add_foreign_key "book_tours", "users"
  add_foreign_key "comments", "reviews"
  add_foreign_key "comments", "users"
  add_foreign_key "images_tours", "tours"
  add_foreign_key "likes", "reviews"
  add_foreign_key "likes", "users"
  add_foreign_key "ratings", "tours"
  add_foreign_key "ratings", "users"
  add_foreign_key "reviews", "category_reviews"
  add_foreign_key "reviews", "users"
  add_foreign_key "tours", "category_tours"
end
