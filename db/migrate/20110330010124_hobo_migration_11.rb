class HoboMigration11 < ActiveRecord::Migration
  def self.up
    create_table :ca_docs do |t|
      t.string   :document
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :corrective_action_id
    end
    add_index :ca_docs, [:corrective_action_id]

    add_column :corrective_actions, :assigned_to, :string
    add_column :corrective_actions, :completed_by, :string
    add_column :corrective_actions, :completed_date, :date
  end

  def self.down
    remove_column :corrective_actions, :assigned_to
    remove_column :corrective_actions, :completed_by
    remove_column :corrective_actions, :completed_date

    drop_table :ca_docs
  end
end
