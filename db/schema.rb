# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110330195738) do

  create_table "alevels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tcl_id"
  end

  add_index "alevels", ["tcl_id"], :name => "index_alevels_on_tcl_id"

  create_table "ca_docs", :force => true do |t|
    t.string   "document"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "corrective_action_id"
  end

  add_index "ca_docs", ["corrective_action_id"], :name => "index_ca_docs_on_corrective_action_id"

  create_table "consequences", :force => true do |t|
    t.string   "consequence"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hazard_id"
  end

  add_index "consequences", ["hazard_id"], :name => "index_consequences_on_hazard_id"

  create_table "corrective_actions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tcl_id"
    t.string   "assigned_to"
    t.string   "completed_by"
    t.string   "completed_date"
    t.text     "reviewer_ob"
  end

  add_index "corrective_actions", ["tcl_id"], :name => "index_corrective_actions_on_tcl_id"

  create_table "disaster_declarations", :force => true do |t|
    t.string   "name"
    t.date     "ddate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "disdec_id"
  end

  add_index "disaster_declarations", ["disdec_id"], :name => "index_disaster_declarations_on_disdec_id"

  create_table "disdecs", :force => true do |t|
    t.string   "name",       :default => "Disaster Declarations"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
  end

  add_index "disdecs", ["program_id"], :name => "index_disdecs_on_program_id"

  create_table "e_open_cas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.string   "name"
  end

  add_index "e_open_cas", ["event_id"], :name => "index_e_open_cas_on_event_id"

  create_table "eecas", :force => true do |t|
    t.string   "name"
    t.boolean  "ex_prog"
    t.text     "ex_prog_desc"
    t.string   "ex_prog_doc"
    t.string   "test_sae_frequency"
    t.string   "test_epef_frequency"
    t.boolean  "match_hira"
    t.boolean  "ex_eval_proc"
    t.text     "eep_desc"
    t.string   "eep_doc"
    t.text     "plans_procs_review"
    t.string   "pp_rev_frequency"
    t.text     "caps_reviewed"
    t.text     "partners"
    t.boolean  "ca_proc"
    t.text     "resolution_desc"
    t.string   "resolution_doc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
  end

  add_index "eecas", ["program_id"], :name => "index_eecas_on_program_id"

  create_table "efundings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "efundings", ["event_id"], :name => "index_efundings_on_event_id"

  create_table "egoals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "egoals", ["event_id"], :name => "index_egoals_on_event_id"

  create_table "ehosts", :force => true do |t|
    t.string   "host"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "ehosts", ["event_id"], :name => "index_ehosts_on_event_id"

  create_table "elocations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "elocations", ["event_id"], :name => "index_elocations_on_event_id"

  create_table "emap_standards", :force => true do |t|
    t.string   "name"
    t.text     "std_lang"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eparticipants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "eparticipants", ["event_id"], :name => "index_eparticipants_on_event_id"

  create_table "escenarios", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "escenarios", ["event_id"], :name => "index_escenarios_on_event_id"

  create_table "etypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "event_name"
    t.date     "event_date"
    t.date     "event_end_date"
    t.string   "event_duration"
    t.text     "event_duration_description"
    t.text     "event_scenario_summary"
    t.boolean  "statewide_event"
    t.boolean  "multistate_event"
    t.text     "ema_role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
    t.integer  "event_state_id"
    t.integer  "event_type_id"
    t.integer  "event_scenario_id"
  end

  add_index "events", ["event_scenario_id"], :name => "index_events_on_event_scenario_id"
  add_index "events", ["event_state_id"], :name => "index_events_on_event_state_id"
  add_index "events", ["event_type_id"], :name => "index_events_on_event_type_id"
  add_index "events", ["program_id"], :name => "index_events_on_program_id"

  create_table "funding07_sources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source"
    t.integer  "program_id"
  end

  add_index "funding07_sources", ["program_id"], :name => "index_funding07_sources_on_program_id"

  create_table "funding08_sources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source"
    t.integer  "program_id"
  end

  add_index "funding08_sources", ["program_id"], :name => "index_funding08_sources_on_program_id"

  create_table "funding09_sources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source"
    t.integer  "program_id"
  end

  add_index "funding09_sources", ["program_id"], :name => "index_funding09_sources_on_program_id"

  create_table "funding10_sources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source"
    t.integer  "program_id"
  end

  add_index "funding10_sources", ["program_id"], :name => "index_funding10_sources_on_program_id"

  create_table "hazards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hira_id"
  end

  add_index "hazards", ["hira_id"], :name => "index_hazards_on_hira_id"

  create_table "hiras", :force => true do |t|
    t.string   "name",        :default => "HIRA"
    t.boolean  "matching"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
  end

  add_index "hiras", ["program_id"], :name => "index_hiras_on_program_id"

  create_table "improvement_areas", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tcl_id"
  end

  add_index "improvement_areas", ["tcl_id"], :name => "index_improvement_areas_on_tcl_id"

  create_table "interviews", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.date     "date"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "interviews", ["event_id"], :name => "index_interviews_on_event_id"

  create_table "learned_lessons", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "learned_lessons", ["event_id"], :name => "index_learned_lessons_on_event_id"

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "summary"
    t.boolean  "continuous_ca_plan"
    t.boolean  "proc_for_devel"
    t.boolean  "ca_tracked"
    t.text     "ca_summary"
    t.text     "ca_resolved"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.string   "program_street"
    t.string   "program_city"
    t.string   "program_contact"
    t.string   "contact_title"
    t.string   "contact_phone"
    t.string   "contact_mobile"
    t.string   "contact_email"
    t.integer  "program_state_id"
    t.string   "program_jurisdiction"
    t.string   "program_zip"
    t.string   "funding7"
    t.string   "funding8"
    t.string   "funding9"
    t.string   "funding10"
    t.string   "gfunding7"
    t.string   "gfunding8"
    t.string   "gfunding9"
    t.string   "gfunding10"
  end

  add_index "programs", ["owner_id"], :name => "index_programs_on_owner_id"
  add_index "programs", ["program_state_id"], :name => "index_programs_on_program_state_id"

  create_table "review_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "review_id"
  end

  add_index "review_assignments", ["review_id"], :name => "index_review_assignments_on_review_id"
  add_index "review_assignments", ["user_id"], :name => "index_review_assignments_on_user_id"

  create_table "reviews", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
  end

  add_index "reviews", ["program_id"], :name => "index_reviews_on_program_id"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strengths", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tcl_id"
  end

  add_index "strengths", ["tcl_id"], :name => "index_strengths_on_tcl_id"

  create_table "tcaps", :force => true do |t|
    t.string   "name"
    t.integer  "std_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tcl_goals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tcl_id"
  end

  add_index "tcl_goals", ["tcl_id"], :name => "index_tcl_goals_on_tcl_id"

  create_table "tcl_objectives", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tcl_id"
  end

  add_index "tcl_objectives", ["tcl_id"], :name => "index_tcl_objectives_on_tcl_id"

  create_table "tcls", :force => true do |t|
    t.string   "name",                       :default => "TCL:"
    t.text     "summary"
    t.boolean  "improvement_plan"
    t.boolean  "improvement_plan_completed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "tcap_id"
  end

  add_index "tcls", ["event_id"], :name => "index_tcls_on_event_id"
  add_index "tcls", ["tcap_id"], :name => "index_tcls_on_tcap_id"

  create_table "texercises", :force => true do |t|
    t.string   "name"
    t.date     "tdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "training_plan_id"
  end

  add_index "texercises", ["training_plan_id"], :name => "index_texercises_on_training_plan_id"

  create_table "tpriorities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "training_plan_id"
  end

  add_index "tpriorities", ["training_plan_id"], :name => "index_tpriorities_on_training_plan_id"

  create_table "train_tcaps", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "training_plan_id"
    t.integer  "tcap_id"
  end

  add_index "train_tcaps", ["tcap_id"], :name => "index_train_tcaps_on_tcap_id"
  add_index "train_tcaps", ["training_plan_id"], :name => "index_train_tcaps_on_training_plan_id"

  create_table "training_plans", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
  end

  add_index "training_plans", ["program_id"], :name => "index_training_plans_on_program_id"

  create_table "uploads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "owner_id"
    t.string   "proof_file_name"
    t.string   "proof_content_type"
    t.integer  "proof_file_size"
    t.datetime "proof_updated_at"
    t.integer  "program_id"
  end

  add_index "uploads", ["event_id"], :name => "index_uploads_on_event_id"
  add_index "uploads", ["owner_id"], :name => "index_uploads_on_owner_id"
  add_index "uploads", ["program_id"], :name => "index_uploads_on_program_id"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "invited"
    t.datetime "key_timestamp"
    t.boolean  "reviewer",                                :default => false
    t.string   "agency"
    t.string   "job_title"
    t.boolean  "program",                                 :default => false
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
