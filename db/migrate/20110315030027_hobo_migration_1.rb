class HoboMigration1 < ActiveRecord::Migration
  def self.up
    add_column :tcls, :tcap_id, :integer

    add_column :alevels, :tcap_id, :integer

    add_index :tcls, [:tcap_id]

    add_index :alevels, [:tcap_id]
  end

  def self.down
    remove_column :tcls, :tcap_id

    remove_column :alevels, :tcap_id

    remove_index :tcls, :name => :index_tcls_on_tcap_id rescue ActiveRecord::StatementInvalid

    remove_index :alevels, :name => :index_alevels_on_tcap_id rescue ActiveRecord::StatementInvalid
  end
end
