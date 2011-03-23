class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :funding07_sources, :source, :string
    add_column :funding07_sources, :program_id, :integer

    add_column :funding08_sources, :source, :string
    add_column :funding08_sources, :program_id, :integer

    add_column :funding09_sources, :source, :string
    add_column :funding09_sources, :program_id, :integer

    add_column :funding10_sources, :source, :string
    add_column :funding10_sources, :program_id, :integer

    add_index :funding07_sources, [:program_id]

    add_index :funding08_sources, [:program_id]

    add_index :funding09_sources, [:program_id]

    add_index :funding10_sources, [:program_id]
  end

  def self.down
    remove_column :funding07_sources, :source
    remove_column :funding07_sources, :program_id

    remove_column :funding08_sources, :source
    remove_column :funding08_sources, :program_id

    remove_column :funding09_sources, :source
    remove_column :funding09_sources, :program_id

    remove_column :funding10_sources, :source
    remove_column :funding10_sources, :program_id

    remove_index :funding07_sources, :name => :index_funding07_sources_on_program_id rescue ActiveRecord::StatementInvalid

    remove_index :funding08_sources, :name => :index_funding08_sources_on_program_id rescue ActiveRecord::StatementInvalid

    remove_index :funding09_sources, :name => :index_funding09_sources_on_program_id rescue ActiveRecord::StatementInvalid

    remove_index :funding10_sources, :name => :index_funding10_sources_on_program_id rescue ActiveRecord::StatementInvalid
  end
end
