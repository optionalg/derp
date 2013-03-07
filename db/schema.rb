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

ActiveRecord::Schema.define(:version => 20130112203558) do

  create_table "alerts", :force => true do |t|
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "errors", :force => true do |t|
    t.string  "message",    :default => "", :null => false
    t.integer "project_id",                 :null => false
    t.integer "alert_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_foreign_key "alerts", "projects", :name => "alerts_project_id_fk", :dependent => :delete

  add_foreign_key "errors", "alerts", :name => "errors_alert_id_fk", :dependent => :delete
  add_foreign_key "errors", "projects", :name => "errors_project_id_fk", :dependent => :delete

end
