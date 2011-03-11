class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :users, :job_title, :string

    add_column :programs, :program_jusridiction, :string
    add_column :programs, :program_street, :string
    add_column :programs, :program_city, :string
    add_column :programs, :program_contact, :string
    add_column :programs, :contact_title, :string
    add_column :programs, :contact_phone, :string
    add_column :programs, :contact_mobile, :string
    add_column :programs, :contact_email, :string
    add_column :programs, :program_state_id, :integer

    add_index :programs, [:program_state_id]
  end

  def self.down
    remove_column :users, :job_title

    remove_column :programs, :program_jusridiction
    remove_column :programs, :program_street
    remove_column :programs, :program_city
    remove_column :programs, :program_contact
    remove_column :programs, :contact_title
    remove_column :programs, :contact_phone
    remove_column :programs, :contact_mobile
    remove_column :programs, :contact_email
    remove_column :programs, :program_state_id

    remove_index :programs, :name => :index_programs_on_program_state_id rescue ActiveRecord::StatementInvalid
  end
end
