class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :programs, :program_jurisdiction, :string
    remove_column :programs, :program_jusridiction
  end

  def self.down
    remove_column :programs, :program_jurisdiction
    add_column :programs, :program_jusridiction, :string
  end
end
