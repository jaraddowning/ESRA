class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :e_open_cas, :name, :string
  end

  def self.down
    remove_column :e_open_cas, :name
  end
end
