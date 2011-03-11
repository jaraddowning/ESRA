class ProgramsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  def show
    @program = Program.find(params[:id])
    
    hobo_show do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @program }
      format.pdf { render :layout => false }
    end
  end

end
