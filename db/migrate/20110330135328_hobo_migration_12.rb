class HoboMigration12 < ActiveRecord::Migration
  def self.up
    add_column :corrective_actions, :reviewer_ob, :text
  end

  def self.down
    remove_column :corrective_actions, :reviewer_ob
  end
end
