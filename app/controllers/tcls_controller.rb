class TclsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index

  auto_actions_for :event, [:new, :create]

  def edit
    self.this = User.new(params[:tcap]) if params[:tcap]
    hobo_show do
      @tcap = this
      hobo_ajax_response if request.xhr?
    end
  end

  def new
    hobo_create(Tcap.new(params[:tcap])) do
      hobo_ajax_response if request.xhr?
    end
  end

  #def new
  #  hobo_new do
  #    this.attributes = params[:tcl] || {}
  #    hobo_ajax_response if request.xhr?
  #  end
  #end

  #def edit
  #  hobo_show do
  #    this.attributes = params[:tcl] || {}
  #    hobo_ajax_response if request.xhr?
  #  end
  #end

end
