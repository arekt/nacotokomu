class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :contact_name
      t.string :alias
      t.text :details
      t.integer  "service_notification_period"
      t.integer  "host_notification_period"
      t.integer  "service_notification_command"
      t.integer  "host_notification_command"
      t.string   "email"
      t.string   "phone"        

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
