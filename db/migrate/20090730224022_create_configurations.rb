class CreateConfigurations < ActiveRecord::Migration
  def self.up
    create_table :configurations do |t|
      t.string :name
      t.text :description
      t.text :details
      t.integer :conf_type
      t.timestamps
    end
  end

  def self.down
    drop_table :configurations
  end
end
