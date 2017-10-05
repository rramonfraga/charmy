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

ActiveRecord::Schema.define(version: 20171005174412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.bigint "store_id"
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_events_on_product_id"
    t.index ["store_id"], name: "index_events_on_store_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "fashion_set_products", force: :cascade do |t|
    t.bigint "fashion_set_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fashion_set_id"], name: "index_fashion_set_products_on_fashion_set_id"
    t.index ["product_id"], name: "index_fashion_set_products_on_product_id"
  end

  create_table "fashion_sets", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.bigint "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_fashion_set_file_name"
    t.string "image_fashion_set_content_type"
    t.integer "image_fashion_set_file_size"
    t.datetime "image_fashion_set_updated_at"
    t.index ["style_id"], name: "index_fashion_sets_on_style_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "type"
    t.integer "price"
    t.string "color"
    t.string "position"
    t.string "gender"
    t.string "material"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_product_file_name"
    t.string "image_product_content_type"
    t.integer "image_product_file_size"
    t.datetime "image_product_updated_at"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "type"
    t.string "symbol"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_products", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "store_id"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_store_products_on_product_id"
    t.index ["store_id"], name: "index_store_products_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "country"
    t.string "post_code"
    t.string "telephone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_style_file_name"
    t.string "image_style_content_type"
    t.integer "image_style_file_size"
    t.datetime "image_style_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "gender"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end