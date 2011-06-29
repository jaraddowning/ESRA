class TclsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index

  auto_actions_for :event, [:new, :create]

#  def new
#    hobo_create(Tcl.new(params[:tcl])) do
#      hobo_ajax_response if request.xhr?
#    end
#  end

#  def edit 
#    self.this = User.new(params[:tcl]) if params[:tcl] 
#    hobo_show do 
#      @tcl = this 
#      hobo_ajax_response if request.xhr? 
#    end 
#  end 

  def new
    hobo_new do
      this.attributes = params[:tcl] || {}
      hobo_ajax_response if request.xhr?
    end
  end

  def edit
    hobo_show do
      this.attributes = params[:tcl] || {}
      hobo_ajax_response if request.xhr?
    end
  end

end
