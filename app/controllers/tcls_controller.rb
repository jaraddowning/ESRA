class TclsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index

  auto_actions_for :event, :new


#  def new
#    hobo new do
#      this.attributes = params[:tcl] || {}
#      hobo_ajax_response if request.xhr?
#    end
#  end

#  def edit
#    hobo_show do
#      this.attributes = params[:tcl] || {}
#      hobo_ajax_response if request.xhr?
#    end
#  end

end
