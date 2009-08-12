class CreateContactgroupsContacts < ActiveRecord::Migration
  def self.up
    create_table :contactgroups_contacts, :id => false do |t|
        t.integer :contact_id
        t.integer :contactgroup_id
    end
  end

  def self.down
    drop_table :contactgroups_contacts
  end
end
