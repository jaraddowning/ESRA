class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :training_plans do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :training_plans, [:program_id]

    create_table :programs do |t|
      t.string   :name
      t.string   :program_jurisdiction
      t.string   :program_street
      t.string   :program_city
      t.string   :program_zip
      t.string   :program_contact
      t.string   :contact_title
      t.string   :contact_phone
      t.string   :contact_mobile
      t.string   :contact_email
      t.text     :summary
      t.string   :funding7
      t.string   :funding8
      t.string   :funding9
      t.string   :funding10
      t.string   :gfunding7
      t.string   :gfunding8
      t.string   :gfunding9
      t.string   :gfunding10
      t.boolean  :continuous_ca_plan
      t.boolean  :proc_for_devel
      t.boolean  :ca_tracked
      t.text     :ca_summary
      t.text     :ca_resolved
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :owner_id
      t.integer  :program_state_id
    end
    add_index :programs, [:owner_id]
    add_index :programs, [:program_state_id]

    create_table :users do |t|
      t.string   :crypted_password, :limit => 40
      t.string   :salt, :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :name
      t.string   :email_address
      t.string   :agency
      t.string   :job_title
      t.boolean  :administrator, :default => false
      t.boolean  :reviewer, :default => false
      t.boolean  :program, :default => false
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :state, :default => "invited"
      t.datetime :key_timestamp
    end
    add_index :users, [:state]

    create_table :states do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :eecas do |t|
      t.string   :name
      t.boolean  :ex_prog
      t.text     :ex_prog_desc
      t.string   :ex_prog_doc
      t.string   :test_sae_frequency
      t.string   :test_epef_frequency
      t.boolean  :match_hira
      t.boolean  :ex_eval_proc
      t.text     :eep_desc
      t.string   :eep_doc
      t.text     :plans_procs_review
      t.string   :pp_rev_frequency
      t.text     :caps_reviewed
      t.text     :partners
      t.boolean  :ca_proc
      t.text     :resolution_desc
      t.string   :resolution_doc
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :eecas, [:program_id]

    create_table :learned_lessons do |t|
      t.string   :title
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :learned_lessons, [:event_id]

    create_table :events do |t|
      t.string   :event_name
      t.date     :event_date
      t.date     :event_end_date
      t.string   :event_duration
      t.text     :event_duration_description
      t.text     :event_scenario_summary
      t.boolean  :statewide_event
      t.boolean  :multistate_event
      t.text     :ema_role
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
      t.integer  :event_state_id
      t.integer  :event_type_id
      t.integer  :event_scenario_id
    end
    add_index :events, [:program_id]
    add_index :events, [:event_state_id]
    add_index :events, [:event_type_id]
    add_index :events, [:event_scenario_id]

    create_table :etypes do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :escenarios do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :escenarios, [:event_id]

    create_table :disaster_declarations do |t|
      t.string   :name
      t.date     :ddate
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :disdec_id
    end
    add_index :disaster_declarations, [:disdec_id]

    create_table :disdecs do |t|
      t.string   :name, :default => "Disaster Declarations"
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :disdecs, [:program_id]

    create_table :tcls do |t|
      t.string   :name, :default => "TCL:"
      t.text     :summary
      t.boolean  :improvement_plan
      t.boolean  :improvement_plan_completed
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
      t.integer  :tcap_id
    end
    add_index :tcls, [:event_id]
    add_index :tcls, [:tcap_id]

    create_table :tcaps do |t|
      t.string   :name
      t.integer  :std_num
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :hiras do |t|
      t.string   :name, :default => "HIRA"
      t.boolean  :matching
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :hiras, [:program_id]

    create_table :interviews do |t|
      t.string   :name
      t.string   :title
      t.date     :date
      t.text     :summary
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :interviews, [:event_id]

    create_table :reviews do |t|
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :reviews, [:program_id]

    create_table :texercises do |t|
      t.string   :name
      t.date     :tdate
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :training_plan_id
    end
    add_index :texercises, [:training_plan_id]

    create_table :uploads do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
      t.integer  :program_id
      t.integer  :owner_id
      t.string   :proof_file_name
      t.string   :proof_content_type
      t.integer  :proof_file_size
      t.datetime :proof_updated_at
    end
    add_index :uploads, [:event_id]
    add_index :uploads, [:program_id]
    add_index :uploads, [:owner_id]

    create_table :funding07_sources do |t|
      t.string   :source
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :funding07_sources, [:program_id]

    create_table :funding08_sources do |t|
      t.string   :source
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :funding08_sources, [:program_id]

    create_table :funding09_sources do |t|
      t.string   :source
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :funding09_sources, [:program_id]

    create_table :funding10_sources do |t|
      t.string   :source
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :program_id
    end
    add_index :funding10_sources, [:program_id]

    create_table :eparticipants do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :eparticipants, [:event_id]

    create_table :e_open_cas do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :e_open_cas, [:event_id]

    create_table :ehosts do |t|
      t.string   :host
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :ehosts, [:event_id]

    create_table :egoals do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :egoals, [:event_id]

    create_table :elocations do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :elocations, [:event_id]

    create_table :efundings do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :event_id
    end
    add_index :efundings, [:event_id]

    create_table :strengths do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :strengths, [:tcl_id]

    create_table :emap_standards do |t|
      t.string   :name
      t.text     :std_lang
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :corrective_actions do |t|
      t.string   :name
      t.string   :assigned_to
      t.string   :completed_by
      t.string   :completed_date
      t.text     :reviewer_ob
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :corrective_actions, [:tcl_id]

    create_table :alevels do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :alevels, [:tcl_id]

    create_table :tcl_goals do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :tcl_goals, [:tcl_id]

    create_table :review_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.integer  :review_id
    end
    add_index :review_assignments, [:user_id]
    add_index :review_assignments, [:review_id]

    create_table :ca_docs do |t|
      t.string   :document
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :corrective_action_id
    end
    add_index :ca_docs, [:corrective_action_id]

    create_table :consequences do |t|
      t.string   :consequence
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :hazard_id
    end
    add_index :consequences, [:hazard_id]

    create_table :hazards do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :hira_id
    end
    add_index :hazards, [:hira_id]

    create_table :tpriorities do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :training_plan_id
    end
    add_index :tpriorities, [:training_plan_id]

    create_table :train_tcaps do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :training_plan_id
      t.integer  :tcap_id
    end
    add_index :train_tcaps, [:training_plan_id]
    add_index :train_tcaps, [:tcap_id]

    create_table :tcl_objectives do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :tcl_objectives, [:tcl_id]

    create_table :improvement_areas do |t|
      t.text     :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :tcl_id
    end
    add_index :improvement_areas, [:tcl_id]
  end

  def self.down
    drop_table :training_plans
    drop_table :programs
    drop_table :users
    drop_table :states
    drop_table :eecas
    drop_table :learned_lessons
    drop_table :events
    drop_table :etypes
    drop_table :escenarios
    drop_table :disaster_declarations
    drop_table :disdecs
    drop_table :tcls
    drop_table :tcaps
    drop_table :hiras
    drop_table :interviews
    drop_table :reviews
    drop_table :texercises
    drop_table :uploads
    drop_table :funding07_sources
    drop_table :funding08_sources
    drop_table :funding09_sources
    drop_table :funding10_sources
    drop_table :eparticipants
    drop_table :e_open_cas
    drop_table :ehosts
    drop_table :egoals
    drop_table :elocations
    drop_table :efundings
    drop_table :strengths
    drop_table :emap_standards
    drop_table :corrective_actions
    drop_table :alevels
    drop_table :tcl_goals
    drop_table :review_assignments
    drop_table :ca_docs
    drop_table :consequences
    drop_table :hazards
    drop_table :tpriorities
    drop_table :train_tcaps
    drop_table :tcl_objectives
    drop_table :improvement_areas
  end
end
