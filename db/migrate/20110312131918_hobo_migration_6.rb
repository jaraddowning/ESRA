class HoboMigration6 < ActiveRecord::Migration
  def self.up
    remove_column :alevels, :tcl_id

    remove_index :alevels, :name => :index_alevels_on_tcl_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :alevels, :tcl_id, :integer

    add_index :alevels, [:tcl_id]
  end
end
