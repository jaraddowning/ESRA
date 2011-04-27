class HoboMigration1 < ActiveRecord::Migration
  def self.up
    remove_column :reviews, :description
  end

  def self.down
    add_column :reviews, :description, :string
  end
end
