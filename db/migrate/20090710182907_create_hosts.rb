class CreateHosts < ActiveRecord::Migration
  def self.up
    create_table :hosts do |t|
      t.string :host_name
      t.string :alias
      t.string :address
      t.integer :command_id
      t.text :details
      t.integer  "timeperiod_id"
      t.integer  "configuration_id"

      t.timestamps
    end
  end

  def self.down
    drop_table :hosts
  end
end
