class CreateHostgroups < ActiveRecord::Migration
  def self.up
    create_table :hostgroups do |t|
      t.string :hostgroup_name
      t.string :alias

      t.timestamps
    end
  end

  def self.down
    drop_table :hostgroups
  end
end
