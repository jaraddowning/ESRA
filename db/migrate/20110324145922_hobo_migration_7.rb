class HoboMigration7 < ActiveRecord::Migration
  def self.up
    create_table :train_tcaps do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcap_id
    end
    add_index :train_tcaps, [:tcap_id]

    remove_column :training_plans, :tcap_id

    remove_index :training_plans, :name => :index_training_plans_on_tcap_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :training_plans, :tcap_id, :integer

    drop_table :train_tcaps

    add_index :training_plans, [:tcap_id]
  end
end
