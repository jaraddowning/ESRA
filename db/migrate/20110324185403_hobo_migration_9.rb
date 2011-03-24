class HoboMigration9 < ActiveRecord::Migration
  def self.up
    add_column :train_tcaps, :tcap_id, :integer

    add_index :train_tcaps, [:tcap_id]
  end

  def self.down
    remove_column :train_tcaps, :tcap_id

    remove_index :train_tcaps, :name => :index_train_tcaps_on_tcap_id rescue ActiveRecord::StatementInvalid
  end
end
