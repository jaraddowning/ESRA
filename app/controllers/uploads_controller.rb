class UploadsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index

  auto_actions_for :event, [:new, :create]
  auto_actions_for :program, [:new, :create]

end
