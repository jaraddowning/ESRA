class HoboMigration5 < ActiveRecord::Migration
  def self.up
    create_table :ehosts do |t|
      t.string   :host
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :ehosts, [:event_id]

    remove_column :events, :event_host
  end

  def self.down
    add_column :events, :event_host, :string

    drop_table :ehosts
  end
end
