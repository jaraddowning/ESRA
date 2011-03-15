class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :tcl_objectives do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :tcl_objectives, [:tcl_id]

    create_table :tcl_goals do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :tcl_goals, [:tcl_id]
  end

  def self.down
    drop_table :tcl_objectives
    drop_table :tcl_goals
  end
end
