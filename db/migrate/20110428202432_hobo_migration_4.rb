class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :interviews, :program_id, :integer
    remove_column :interviews, :event_id

    remove_column :tcls, :alevel_id

    remove_index :interviews, :name => :index_interviews_on_event_id rescue ActiveRecord::StatementInvalid
    add_index :interviews, [:program_id]
  end

  def self.down
    remove_column :interviews, :program_id
    add_column :interviews, :event_id, :integer

    add_column :tcls, :alevel_id, :integer

    remove_index :interviews, :name => :index_interviews_on_program_id rescue ActiveRecord::StatementInvalid
    add_index :interviews, [:event_id]
  end
end
