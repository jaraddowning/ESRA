class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :consequences do |t|
      t.string   :consequence
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :hazard_id
    end
    add_index :consequences, [:hazard_id]

    remove_column :tcls, :alevel_id

    remove_column :alevels, :tcap_id
  end

  def self.down
    add_column :tcls, :alevel_id, :integer

    add_column :alevels, :tcap_id, :integer

    drop_table :consequences
  end
end
