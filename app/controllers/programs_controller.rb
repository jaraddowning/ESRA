class ProgramsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def show
    @program = Program.find(params[:id])
    
    hobo_show do |format|
      format.html # show.html.erb
      format.xml { render :xml => @program }
      #format.pdf { render :layout => false }
      format.pdf do
        prawnto :prawn => { :top_margin => 72, :left_margin => 72, :right_margin => 72 }#, :filename => "Report#{id}.pdf"
      end
    end
  end

end
