class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :tcls, :alevel_id, :integer
    change_column :tcls, :name, :string, :limit => 255, :default => "TCL:"

    add_index :tcls, [:alevel_id]

    remove_index :alevels, :name => :index_alevels_on_tcl_id rescue ActiveRecord::StatementInvalid
    add_index :alevels, [:tcap_id]
  end

  def self.down
    remove_column :tcls, :alevel_id
    change_column :tcls, :name, :string, :default => "TCL"

    remove_index :tcls, :name => :index_tcls_on_alevel_id rescue ActiveRecord::StatementInvalid

    remove_index :alevels, :name => :index_alevels_on_tcap_id rescue ActiveRecord::StatementInvalid
    add_index :alevels, [:tcl_id]
  end
end
