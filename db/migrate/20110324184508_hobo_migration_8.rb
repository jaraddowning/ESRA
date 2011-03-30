class HoboMigration8 < ActiveRecord::Migration
  def self.up
    add_column :train_tcaps, :training_plan_id, :integer
    remove_column :train_tcaps, :tcap_id

    remove_index :train_tcaps, :name => :index_train_tcaps_on_tcap_id rescue ActiveRecord::StatementInvalid
    add_index :train_tcaps, [:training_plan_id]
  end

  def self.down
    remove_column :train_tcaps, :training_plan_id
    add_column :train_tcaps, :tcap_id, :integer

    remove_index :train_tcaps, :name => :index_train_tcaps_on_training_plan_id rescue ActiveRecord::StatementInvalid
    add_index :train_tcaps, [:tcap_id]
  end
end
