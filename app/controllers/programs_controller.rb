class ProgramsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def show
    @prog = find_instance
      @events = @prog.events.apply_scopes(
                :search => [params[:search], :event_name],
                :order_by => parse_sort_param(:event_date, :event_name))

    @program = Program.find(params[:id])

# => Trying to convert boolean to Yes:No
#    scopes
#    scopes[:continuous_ca_plan] = true if params[:continuous_ca_plan]._?.== 'Yes'
#    scopes[:continuous_ca_plan] = false if params[:continuous_ca_plan]._?.== 'No'
#    hobo_show Program.apply_scopes(scopes)
    
    hobo_show do |format|
      format.html
      format.xml { render :xml => @program }
      #format.pdf
      format.pdf do
        prawnto :prawn => { :top_margin => 72, :left_margin => 72, :right_margin => 72 }#, :filename => "Report#{id}.pdf"
      end
    end
  end

end
