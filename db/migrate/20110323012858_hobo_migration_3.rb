class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :funding07_sources do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :funding08_sources do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :funding09_sources do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :funding10_sources do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    remove_column :programs, :gfundingsource7
    remove_column :programs, :gfundingsource8
    remove_column :programs, :gfundingsource9
    remove_column :programs, :gfundingsource10
  end

  def self.down
    add_column :programs, :gfundingsource7, :string
    add_column :programs, :gfundingsource8, :string
    add_column :programs, :gfundingsource9, :string
    add_column :programs, :gfundingsource10, :string

    drop_table :funding07_sources
    drop_table :funding08_sources
    drop_table :funding09_sources
    drop_table :funding10_sources
  end
end
