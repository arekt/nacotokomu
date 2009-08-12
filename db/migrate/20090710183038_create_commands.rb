class CreateCommands < ActiveRecord::Migration
  def self.up
    create_table :commands do |t|
      t.string :command_name
      t.string :command_line

      t.timestamps
    end
  end

  def self.down
    drop_table :commands
  end
end
