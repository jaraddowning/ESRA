class HoboMigration6 < ActiveRecord::Migration
  def self.up
    change_column :eecas, :name, :string, :limit => 255, :default => nil
  end

  def self.down
    change_column :eecas, :name, :string, :default => "Exercises, Evals & CAs"
  end
end
