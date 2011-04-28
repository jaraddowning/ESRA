class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_index :alevels, [:tcap_id]
  end

  def self.down
    remove_index :alevels, :name => :index_alevels_on_tcap_id rescue ActiveRecord::StatementInvalid
  end
end
