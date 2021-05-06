ActiveRecord::Schema.define(version: 2021_05_02_122850) do

  create_table "commissions", force: :cascade do |t|
    t.integer "costume_id"
    t.integer "globaluser_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "costume_status"
  end

  create_table "costumes", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.string "reference_sheet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "globaluser_id"
  end

  create_table "globalusers", force: :cascade do |t|
    t.boolean "client"
    t.boolean "designer"
    t.text "email"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

end
