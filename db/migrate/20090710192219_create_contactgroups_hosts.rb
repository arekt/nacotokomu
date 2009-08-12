class CreateContactgroupsHosts < ActiveRecord::Migration
  def self.up
    create_table :contactgroups_hosts, :id => false do |t|
        t.integer :host_id
        t.integer :contactgroup_id
    end
  end

  def self.down
    drop_table :contactgroups_hosts
  end
end
