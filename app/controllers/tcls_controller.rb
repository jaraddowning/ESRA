class TclsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index

  auto_actions_for :event, :new

  def edit
    self.this = Tcl.new(params[:tcl]) if params[:tcl]
    hobo_show do
      @tcl = this
      hobo_ajax_response if request.xhr?
    end
  end

  def new
    hobo_create(Tcl.new(params[:tcl])) do
      hobo_ajax_response if request.xhr?
    end
  end

end
