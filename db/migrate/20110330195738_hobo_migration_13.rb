class HoboMigration13 < ActiveRecord::Migration
  def self.up
    change_column :corrective_actions, :completed_date, :string, :limit => 255
  end

  def self.down
    change_column :corrective_actions, :completed_date, :date
  end
end
