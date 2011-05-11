class FindingsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index
  #auto_actions_for :program, :new
  #auto_actions_for :event, :new
  #auto_actions_for :tcl, :new
  #auto_actions_for :corrective_action, :new

end
