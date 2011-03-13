class HoboMigration8 < ActiveRecord::Migration
  def self.up
    add_column :users, :program, :boolean, :default => false
    change_column :users, :agency, :string, :limit => 255, :default => nil
  end

  def self.down
    remove_column :users, :program
    change_column :users, :agency, :boolean, :default => false
  end
end
