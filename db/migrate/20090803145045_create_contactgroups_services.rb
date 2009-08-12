class CreateContactgroupsServices < ActiveRecord::Migration
  def self.up
    create_table :contactgroups_services, :id => false do |t|
        t.integer :contactgroup_id
        t.integer :service_id
    end
  end

  def self.down
    drop_table :contactgroups_services
  end
end
