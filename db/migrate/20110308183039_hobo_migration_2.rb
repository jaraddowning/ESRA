class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :users, :reviewer, :boolean, :default => false
    add_column :users, :agency, :boolean, :default => false

    add_column :uploads, :program_id, :integer

    add_index :uploads, [:program_id]
  end

  def self.down
    remove_column :users, :reviewer
    remove_column :users, :agency

    remove_column :uploads, :program_id

    remove_index :uploads, :name => :index_uploads_on_program_id rescue ActiveRecord::StatementInvalid
  end
end
