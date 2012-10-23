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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121023013618) do

  create_table "employers", :force => true do |t|
    t.string   "title"
    t.integer  "position",   :default => 999
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "published",  :default => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.integer  "employer_id"
    t.text     "short_description"
    t.text     "long_description"
    t.string   "link"
    t.integer  "position",          :default => 999
    t.boolean  "published",         :default => false
    t.string   "poster"
    t.string   "permalink"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "property_of"
  end

  create_table "resumes", :force => true do |t|
    t.string   "file"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "height",         :default => 2445
    t.string   "page_1_photo"
    t.string   "page_2_photo"
    t.boolean  "display_photos", :default => false
  end

  create_table "screenshots", :force => true do |t|
    t.integer  "project_id"
    t.string   "photo"
    t.integer  "position",   :default => 999
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
