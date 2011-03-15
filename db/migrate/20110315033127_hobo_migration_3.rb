class HoboMigration3 < ActiveRecord::Migration
  def self.up
    remove_index :alevels, :name => :index_alevels_on_tcap_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_index :alevels, [:tcap_id]
  end
end
