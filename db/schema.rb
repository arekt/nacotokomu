# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090803145045) do

  create_table "commands", :force => true do |t|
    t.string   "command_name"
    t.string   "command_line"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configurations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "details"
    t.integer  "conf_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactgroups", :force => true do |t|
    t.string   "contactgroup_name"
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactgroups_contacts", :id => false, :force => true do |t|
    t.integer "contact_id"
    t.integer "contactgroup_id"
  end

  create_table "contactgroups_hosts", :id => false, :force => true do |t|
    t.integer "host_id"
    t.integer "contactgroup_id"
  end

  create_table "contactgroups_services", :id => false, :force => true do |t|
    t.integer "contactgroup_id"
    t.integer "service_id"
  end

  create_table "contacts", :force => true do |t|
    t.string   "contact_name"
    t.string   "alias"
    t.text     "details"
    t.integer  "service_notification_period"
    t.integer  "host_notification_period"
    t.integer  "service_notification_command"
    t.integer  "host_notification_command"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostgroups", :force => true do |t|
    t.string   "hostgroup_name"
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostgroups_hosts", :id => false, :force => true do |t|
    t.integer "host_id"
    t.integer "hostgroup_id"
  end

  create_table "hostgroups_services", :id => false, :force => true do |t|
    t.integer "hostgroup_id"
    t.integer "service_id"
  end

  create_table "hosts", :force => true do |t|
    t.string   "host_name"
    t.string   "alias"
    t.string   "address"
    t.integer  "command_id"
    t.text     "details"
    t.integer  "timeperiod_id"
    t.integer  "configuration_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "service_description"
    t.integer  "configuration_id"
    t.integer  "timeperiod_id"
    t.integer  "command_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timeperiods", :force => true do |t|
    t.string   "timeperiod_name"
    t.string   "alias"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
