class CreateHostgroupsHosts < ActiveRecord::Migration
  def self.up
    create_table :hostgroups_hosts, :id => false do |t|
        t.integer :host_id
        t.integer :hostgroup_id
    end
  end

  def self.down
    drop_table :hostgroups_hosts
  end
end
