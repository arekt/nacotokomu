class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :service_description
      t.integer :configuration_id
      t.integer :timeperiod_id
      t.integer :command_id
      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
