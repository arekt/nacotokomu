class CreateContactgroups < ActiveRecord::Migration
  def self.up
    create_table :contactgroups do |t|
      t.string :contactgroup_name
      t.string :alias

      t.timestamps
    end
  end

  def self.down
    drop_table :contactgroups
  end
end
