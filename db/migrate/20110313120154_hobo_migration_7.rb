class HoboMigration7 < ActiveRecord::Migration
  def self.up
    add_index :training_plans, [:program_id]
    add_index :training_plans, [:tcap_id]

    add_index :programs, [:owner_id]

    add_index :users, [:state]

    add_index :eecas, [:program_id]

    add_index :learned_lessons, [:event_id]

    add_index :events, [:program_id]
    add_index :events, [:event_state_id]
    add_index :events, [:event_type_id]
    add_index :events, [:event_scenario_id]

    add_index :escenarios, [:event_id]

    add_index :disaster_declarations, [:disdec_id]

    add_index :disdecs, [:program_id]

    add_index :tcls, [:event_id]

    add_index :hiras, [:program_id]

    add_index :interviews, [:event_id]

    add_index :texercises, [:training_plan_id]

    add_index :uploads, [:event_id]
    add_index :uploads, [:owner_id]

    add_index :eparticipants, [:event_id]

    add_index :egoals, [:event_id]

    add_index :elocations, [:event_id]

    add_index :efundings, [:event_id]

    add_index :strengths, [:tcl_id]

    add_index :corrective_actions, [:tcl_id]

    add_index :tpriorities, [:training_plan_id]

    add_index :hazards, [:hira_id]

    add_index :improvement_areas, [:tcl_id]
  end

  def self.down
    remove_index :training_plans, :name => :index_training_plans_on_program_id rescue ActiveRecord::StatementInvalid
    remove_index :training_plans, :name => :index_training_plans_on_tcap_id rescue ActiveRecord::StatementInvalid

    remove_index :programs, :name => :index_programs_on_owner_id rescue ActiveRecord::StatementInvalid

    remove_index :users, :name => :index_users_on_state rescue ActiveRecord::StatementInvalid

    remove_index :eecas, :name => :index_eecas_on_program_id rescue ActiveRecord::StatementInvalid

    remove_index :learned_lessons, :name => :index_learned_lessons_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :events, :name => :index_events_on_program_id rescue ActiveRecord::StatementInvalid
    remove_index :events, :name => :index_events_on_event_state_id rescue ActiveRecord::StatementInvalid
    remove_index :events, :name => :index_events_on_event_type_id rescue ActiveRecord::StatementInvalid
    remove_index :events, :name => :index_events_on_event_scenario_id rescue ActiveRecord::StatementInvalid

    remove_index :escenarios, :name => :index_escenarios_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :disaster_declarations, :name => :index_disaster_declarations_on_disdec_id rescue ActiveRecord::StatementInvalid

    remove_index :disdecs, :name => :index_disdecs_on_program_id rescue ActiveRecord::StatementInvalid

    remove_index :tcls, :name => :index_tcls_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :hiras, :name => :index_hiras_on_program_id rescue ActiveRecord::StatementInvalid

    remove_index :interviews, :name => :index_interviews_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :texercises, :name => :index_texercises_on_training_plan_id rescue ActiveRecord::StatementInvalid

    remove_index :uploads, :name => :index_uploads_on_event_id rescue ActiveRecord::StatementInvalid
    remove_index :uploads, :name => :index_uploads_on_owner_id rescue ActiveRecord::StatementInvalid

    remove_index :eparticipants, :name => :index_eparticipants_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :egoals, :name => :index_egoals_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :elocations, :name => :index_elocations_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :efundings, :name => :index_efundings_on_event_id rescue ActiveRecord::StatementInvalid

    remove_index :strengths, :name => :index_strengths_on_tcl_id rescue ActiveRecord::StatementInvalid

    remove_index :corrective_actions, :name => :index_corrective_actions_on_tcl_id rescue ActiveRecord::StatementInvalid

    remove_index :tpriorities, :name => :index_tpriorities_on_training_plan_id rescue ActiveRecord::StatementInvalid

    remove_index :hazards, :name => :index_hazards_on_hira_id rescue ActiveRecord::StatementInvalid

    remove_index :improvement_areas, :name => :index_improvement_areas_on_tcl_id rescue ActiveRecord::StatementInvalid
  end
end
