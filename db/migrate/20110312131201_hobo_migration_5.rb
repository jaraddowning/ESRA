class HoboMigration5 < ActiveRecord::Migration
  def self.up
    create_table :tcap_tcls do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcap_id
    end
    add_index :tcap_tcls, [:tcap_id]

    add_column :programs, :program_zip, :string

    remove_column :tcls, :tcap_id

    remove_index :tcls, :name => :index_tcls_on_tcap_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    remove_column :programs, :program_zip

    add_column :tcls, :tcap_id, :integer

    drop_table :tcap_tcls

    add_index :tcls, [:tcap_id]
  end
end
