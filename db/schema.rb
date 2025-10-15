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

ActiveRecord::Schema[8.0].define(version: 2025_10_15_172925) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "oscal_layers", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oscal_models", force: :cascade do |t|
    t.bigint "oscal_layer_id"
    t.string "title"
    t.text "description"
    t.text "version"
    t.string "current_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oscal_layer_id"], name: "index_oscal_models_on_oscal_layer_id"
  end

  create_table "oscal_references", force: :cascade do |t|
    t.bigint "oscal_model_id"
    t.string "format"
    t.string "url"
    t.text "blob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oscal_model_id"], name: "index_oscal_references_on_oscal_model_id"
  end

  create_table "oscal_schemas", force: :cascade do |t|
    t.bigint "oscal_model_id"
    t.string "format"
    t.string "url"
    t.text "blob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oscal_model_id"], name: "index_oscal_schemas_on_oscal_model_id"
  end
end
