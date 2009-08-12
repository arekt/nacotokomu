class CreateHostgroupsServices < ActiveRecord::Migration
  def self.up
    create_table :hostgroups_services, :id => false do |t|
        t.integer :hostgroup_id
        t.integer :service_id
    end
  end

  def self.down
    drop_table :hostgroups_services
  end
end
