class ProgramsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def show
    @prog = find_instance
      @events = @prog.events.apply_scopes(
                :search => [params[:search], :event_name],
                :order_by => parse_sort_param(:event_date, :event_name))

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
