class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :alevels, :tcl_id, :integer

    remove_index :tcls, :name => :index_tcls_on_alevel_id rescue ActiveRecord::StatementInvalid

    remove_index :alevels, :name => :index_alevels_on_tcap_id rescue ActiveRecord::StatementInvalid
    add_index :alevels, [:tcl_id]
  end

  def self.down
    remove_column :alevels, :tcl_id

    add_index :tcls, [:alevel_id]

    remove_index :alevels, :name => :index_alevels_on_tcl_id rescue ActiveRecord::StatementInvalid
    add_index :alevels, [:tcap_id]
  end
end
