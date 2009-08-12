class CreateTimeperiods < ActiveRecord::Migration
  def self.up
    create_table :timeperiods do |t|
      t.string :timeperiod_name
      t.string :alias
      t.text :details

      t.timestamps
    end
  end

  def self.down
    drop_table :timeperiods
  end
end
