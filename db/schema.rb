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

ActiveRecord::Schema.define(version: 2019_04_13_120114) do

  create_table "invent_departments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invent_models", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "vendor_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_id"], name: "index_invent_models_on_vendor_id"
  end

  create_table "invent_properties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 32, null: false
    t.string "short_description", null: false
    t.string "long_description"
    t.boolean "mandatory", default: false, null: false
    t.boolean "uniq", default: false, null: false
    t.boolean "multiple", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invent_property_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "type_id", null: false
    t.bigint "property_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_invent_property_types_on_property_id"
    t.index ["type_id"], name: "index_invent_property_types_on_type_id"
  end

  create_table "invent_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 32, null: false
    t.string "short_description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invent_vendors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invent_workplace_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invent_workplaces", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "workplace_type_id", null: false
    t.bigint "department_id", null: false
    t.integer "responsible_tn", limit: 3
    t.bigint "room_id"
    t.text "comment"
    t.integer "status", limit: 1
    t.date "freezing_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_invent_workplaces_on_department_id"
    t.index ["responsible_tn"], name: "fk_rails_e3635a7dcb"
    t.index ["room_id"], name: "index_invent_workplaces_on_room_id"
    t.index ["status"], name: "index_invent_workplaces_on_status"
    t.index ["workplace_type_id"], name: "index_invent_workplaces_on_workplace_type_id"
  end

  create_table "iss_location_buildings", primary_key: "building_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "site_id", null: false
    t.string "name"
    t.string "short_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_iss_location_buildings_on_site_id"
  end

  create_table "iss_location_rooms", primary_key: "room_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "building_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_iss_location_rooms_on_building_id"
  end

  create_table "iss_location_sites", primary_key: "site_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_infos", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "tn", limit: 3, null: false
    t.string "fio"
    t.string "tel", limit: 6
    t.integer "dept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tn"], name: "index_user_infos_on_tn", unique: true
  end

  add_foreign_key "invent_models", "invent_vendors", column: "vendor_id"
  add_foreign_key "invent_property_types", "invent_properties", column: "property_id"
  add_foreign_key "invent_property_types", "invent_types", column: "type_id"
  add_foreign_key "invent_workplaces", "invent_departments", column: "department_id"
  add_foreign_key "invent_workplaces", "invent_workplace_types", column: "workplace_type_id"
  add_foreign_key "invent_workplaces", "iss_location_rooms", column: "room_id", primary_key: "room_id"
  add_foreign_key "invent_workplaces", "user_infos", column: "responsible_tn", primary_key: "tn"
  add_foreign_key "iss_location_buildings", "iss_location_sites", column: "site_id", primary_key: "site_id"
  add_foreign_key "iss_location_rooms", "iss_location_buildings", column: "building_id", primary_key: "building_id"
end
