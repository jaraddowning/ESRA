class HoboMigration10 < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :reviews, [:program_id]

    create_table :review_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.integer  :review_id
    end
    add_index :review_assignments, [:user_id]
    add_index :review_assignments, [:review_id]
  end

  def self.down
    drop_table :reviews
    drop_table :review_assignments
  end
end
