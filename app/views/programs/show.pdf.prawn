logopath = "#{Rails.root}/public/images/emap_logo.jpg"
sigpath = "#{Rails.root}/public/images/NI_sig.png"
pdf.font "Times-Roman"
pdf.font_size 12

pdf.bounding_box([pdf.bounds.left + 55,pdf.bounds.top - 30], :width => 378, :height => 136) do
pdf.image logopath, :width => 378, :height => 136
end

pdf.move_down(70)
pdf.text "#{@program.name}", :size => 32, :style => :bold, :spacing => 10, :align => :center
pdf.move_down(100)

pdf.start_new_page


pdf.text "I.	Executive Summary", :size => 16, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "EMAP truly appreciated the opportunity to partner with the State of Illinois staff in successfully accomplishing the initial Event Strategic Review (ESR). EMAP, partnering with stakeholders from the Federal Emergency Management Agency (FEMA), National Emergency Management Agency (NEMA), and International Association of Emergency Managers (IAEM) has developed the Event Strategic Review (ESR). The goal of the pilot project is to utilize EMAP’s independent peer-review process to collect and analyze data that will support and assist the FEMA National Preparedness Assessment Division (NPAD) in meeting goals established in the Post Katrina Emergency Management Reform Act of 2006 and Remedial Action Management Program. Additionally, the pilot provided EMAP Training & Technology an opportunity to alpha test the ESR Application (ESRA) currently in development. For the purposes of the initial pilot, ESRA was alpha tested as an Access Database to provide a template by which the pilot software platform could be initiated.   

EMAP will review and translate data collected into an aggregate format that will be provided to partnering stakeholders referenced above. ESR pilot expenses are funded through EMAP’s cooperative agreement with FEMA thus providing your Program with a “free” review.  

Please find attached a summary report that outlines preliminary findings of the review team. Thank you for devoting programmatic time, as well as the time of your staff towards the ESR pilot. We would like to take this opportunity to recognize the exemplary professionalism and assistance provided by the staff of State of Illinois and the Illinois Emergency Management Agency.  

Emergency management requires the cooperation and collaboration of all organizations having a role in response and recovery. Your cooperation and efforts demonstrate the level of leadership and commitment required for the continual professionalization of emergency management to ensure our collective ability to protect the citizens we serve."
pdf.move_down(42)
pdf.text "Sincerely,"
pdf.move_down(17)
pdf.bounding_box([pdf.bounds.left + 20,pdf.bounds.top - 455], :width => 256, :height => 64) do
pdf.image sigpath, :width => 256, :height => 64
end
pdf.move_down(17)
pdf.text "Nicole M. Ishmael
EMAP Executive Director", :size => 12, :spacing => 4
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
pagecount = pdf.page_count
pdf.text "Page #{pagecount}"
end
pdf.start_new_page
pdf.move_down(5)
pdf.text "II.	Introduction", :size => 15, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "A.	ESR Candidate", :size => 14, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "Program: #{@program.name}", :size => 12, :style => :bold, :spacing => 4
pdf.move_down(8)
pdf.text " Program Address:", :size => 12, :style => :bold, :spacing => 4
pdf.move_down(12)
pdf.text "#{@program.program_jurisdiction}", :indent_paragraphs => 40
pdf.text "#{@program.program_street}", :indent_paragraphs => 40
pdf.text "#{@program.program_city}, #{@program.program_state}", :indent_paragraphs => 40
pdf.text "#{@program.program_zip}", :indent_paragraphs => 40

pdf.move_down(8)
pdf.text " ESR Contact:", :size => 12, :style => :bold, :spacing => 4
pdf.move_down(12)
pdf.text "#{@program.program_contact}", :indent_paragraphs => 40
pdf.text "#{@program.contact_title}", :indent_paragraphs => 40
pdf.text "#{@program.contact_phone}", :indent_paragraphs => 40
pdf.text "#{@program.contact_mobile}", :indent_paragraphs => 40
pdf.text "#{@program.contact_email}", :indent_paragraphs => 40
pdf.move_down(12)
pdf.text "B.	ESR Team", :size => 14, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "Mrs. Christine Y. Jacobs, EMAP Projects Coordinator
Mr. Mark Howard, Arizona Div. of Emergency Management 
Ms. Cathi Slaminski"
pdf.move_down(10)
pdf.text "C.	ESR Methodology", :size => 14, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "As this was a “stand-alone” pilot, an EMAP Reviewer team was assembled to conduct an On-site review seperate from an existing scheduled baseline assessment. The process followed many of the same components of the proven peer-review process used by EMAP. The Program was given an opportunity to complete a Self-review, submit supportive documentation and complete an On-site Review prior to the arrival of the Assessor Team. 
 
The program completed an internal self review against pilot methodology and EMAP Standards. The On-site Review was conducted by a team of EMAP liaisons, which provided pilot guidance and direct observation for measuring ESR pilot delivery; monitored progress and outcomes; and coordinated the activities of three (3) independent trained reviewers from outside the pilot program."
pdf.move_down(10)
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
pagecount = pdf.page_count
pdf.text "Page #{pagecount}"
end
pdf.start_new_page
pdf.text "III.	Applying the ESR Data Points", :size => 15, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "A.	Purpose and Scope of the ESR Data Points", :size => 14, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "The pilot project purpose is to collect and identify priority issues, corrective actions, lessons learned and best practices for improvement of existing after-action processes used for exercises and real world events.
The ESR is not prescriptive in nature, rather the ESR applies existing standards and data analysis inquiry to review event documentation pursuant to EMAP Standards 4.3: Hazard Identification, Risk Assessment and Consequence Analysis and EMAP Standard 4.14: Exercises, Evaluations and Corrective Actions. An “Event” is defined as an occurrence of significant involvement that includes multiple jurisdictions and/or agencies that spans multiple operational periods that produces both information and formal event documentation."
pdf.move_down(10)
pdf.text "Documents to be reviewed and/or considered:"
pdf.move_down(10)
pdf.text "•	Exercise Events (Discussion Based, Tabletops, Functional & Full-Scale)", :indent_paragraphs => 30

pdf.text "o	State Preparedness Report(s)
o	After Action Report(s)
o	Improvement Plan(s)
o	Corrective Action Plan(s)
o	Training & Exercise Work Plan(s)", :indent_paragraphs => 60

pdf.text "•	Real World Events", :indent_paragraphs => 30

pdf.text "o	Incident Action Plan(s)
o	After Action Report(s)
o	Improvement Plan(s)
o	Corrective Action Plan(s)", :indent_paragraphs => 60

pdf.move_down(10)
pdf.text "Criteria that will be collected and analyzed will span from 2006 to present:"
pdf.move_down(10)
pdf.text "  •	Event details (date, location, type of event/exercise, etc.)
  •	Top 10 Corrective Action items currently being improved upon
  •	Corrective Actions that have been resolved within the last year
  •	Lessons Learned within the last year
  •	Agency funding for Exercise(s)
  •	Identified strengths and areas of improvement 
  •	EMAP Standard 4.3: Hazard Identification, Risk Assessment and Consequence Analysis 
  •	EMAP Standard 4.14: Exercises, Evaluations and Corrective Actions", :indent_paragraphs => 30
pdf.move_down(10)
pdf.text "B.	Organization of Review Findings", :size => 12, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "Section IV of the review report lists foundational documentation that provided for review and data points.  Review and data points were applied to the Program, and describe the findings of the review team for each point.  Any exemplary or otherwise noteworthy aspects of the Program that were brought to light during the review are included."
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
pagecount = pdf.page_count
pdf.text "Page #{pagecount}"
end
pdf.start_new_page

#   Funding Data
pdf.text "Exercise Funding Data", :spacing => 16, :size => 14, :style => :bold, :indent_paragraphs => 30
pdf.move_down(18)
pdf.text "Local Funding Provided for Exercises Annually:", :spacing => 16, :size => 13, :indent_paragraphs => 37
pdf.move_down(12)
pdf.text "2007: #{@program.funding7}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.text "2008: #{@program.funding8}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.text "2009: #{@program.funding9}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.text "2010: #{@program.funding10}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.move_down(12)
pdf.text "Federal Funding Provided for Exercises Annually:", :spacing => 16, :size => 13, :indent_paragraphs => 37
pdf.move_down(12)
pdf.text "2007: #{@program.gfunding7}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.text "Source of funds:", :spacing => 16, :size => 12, :indent_paragraphs => 44
@program.funding07_sources.each do |federal7|
  pdf.text "#{federal7.source}", :spacing => 16, :size => 12, :indent_paragraphs => 51
end
pdf.text "2008: #{@program.gfunding8}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.text "Source of funds:", :spacing => 16, :size => 12, :indent_paragraphs => 44
@program.funding08_sources.each do |federal8|
  pdf.text "#{federal8.source}", :spacing => 16, :size => 12, :indent_paragraphs => 51
end
pdf.text "2009: #{@program.gfunding9}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.text "Source of funds:", :spacing => 16, :size => 12, :indent_paragraphs => 44
@program.funding09_sources.each do |federal9|
  pdf.text "#{federal9.source}", :spacing => 16, :size => 12, :indent_paragraphs => 51
end
pdf.text "2010: #{@program.gfunding10}", :spacing => 16, :size => 12, :indent_paragraphs => 44
pdf.text "Source of funds:", :spacing => 16, :size => 12, :indent_paragraphs => 44
@program.funding10_sources.each do |federal10|
  pdf.text "#{federal10.source}", :spacing => 16, :size => 12, :indent_paragraphs => 51
end

#   Disaster Declarations
pdf.move_down(10)
@program.disdecs.each do |disaster|
  pdf.text "#{disaster.name}", :spacing => 16, :size => 14, :style => :bold, :indent_paragraphs => 30
  disaster.disaster_declarations.each do |declar|
    pdf.text "•	#{declar.name}", :spacing => 16, :size => 12, :indent_paragraphs => 44
    pdf.text "•	#{declar.ddate}", :spacing => 16, :size => 12, :indent_paragraphs => 44
  end
end

#   Exercise Plans
pdf.move_down(10)
pdf.text "Exercise Plan(s)", :spacing => 16, :size => 14, :style => :bold, :indent_paragraphs => 30
@program.training_plans.each do |explans|
  pdf.text "#{explans.name}", :spacing => 16, :size => 12, :indent_paragraphs => 44
  pdf.text "Exercises:", :spacing => 16, :size => 12, :indent_paragraphs => 44
  explans.texercises.each do |texes|
    pdf.text "#{texes.name}, #{texes.tdate}", :spacing => 16, :size => 12, :indent_paragraphs => 50
  end
  pdf.text "Exercise Priorities:", :spacing => 16, :size => 12, :indent_paragraphs => 44
  explans.tpriorities.each do |priority|
    pdf.text "#{priority.name}", :spacing => 16, :size => 12, :indent_paragraphs => 50
  end
  pdf.text "Exercise Target Capabilities:", :spacing => 16, :size => 12, :indent_paragraphs => 44
  explans.train_tcaps.each do |cap|
    pdf.text "#{cap.tcap}", :spacing => 16, :size => 12, :indent_paragraphs => 50
  end
end

#   EMAP 4.3
pdf.move_down(10)
pdf.text "Hazard Identification, Risk Assessment and Consequence Analysis", :spacing => 16, :size => 14, :style => :bold, :indent_paragraphs => 30
@program.hiras.each do |haz|
  pdf.text "Does the Exercise Plan match the HIRA? #{haz.matching}", :spacing => 16, :size => 12, :indent_paragraphs => 44
  pdf.text "Identified Hazards:", :spacing => 16, :size => 12, :indent_paragraphs => 44
  haz.hazards.each do |list|
    pdf.text "• #{list.name}", :spacing => 16, :size => 12, :indent_paragraphs => 50
  end
end

#   Events
pdf.move_down(10)
pdf.text "IV.	Event Review Findings", :size => 14, :style => :bold, :spacing => 5
@program.events.each do |item|
  pdf.text "Event: #{item.event_name}", :size => 13, :style => :bold, :spacing => 5, :indent_paragraphs => 15
  pdf.move_down(8)
  pdf.text "Event Start Date: #{item.event_date.strftime("%d %b %y")}", :indent_paragraphs => 30
  pdf.text "Event End Date: #{item.event_end_date.strftime("%d %b %y")}", :indent_paragraphs => 30
  pdf.text "Event Duration: #{item.event_duration}", :indent_paragraphs => 30
  pdf.text "Event Host(s):", :indent_paragraphs => 30
  item.ehosts.each do |host|
    pdf.text "• #{host.ehost}", :indent_paragraphs => 42
  end
  pdf.text "Event Funding Source(s):", :indent_paragraphs => 30
  item.efundings.each do |fund|
    pdf.text "• #{fund.name}", :indent_paragraphs => 42
  end

  pdf.text "Event State: #{item.event_state}", :indent_paragraphs => 30
  pdf.text "Event Location(s)/Site(s):", :indent_paragraphs => 30
  item.elocations.each do |location|
    pdf.text "• #{location.name}", :indent_paragraphs => 42
  end
  pdf.text "Event Type: #{item.event_type}", :indent_paragraphs => 30
  pdf.text "Event Goals:", :indent_paragraphs => 30
  item.egoals.each do |goal|
    pdf.text "• #{goal.name}", :indent_paragraphs => 42
  end
  pdf.text "Event Scenario: #{item.event_scenario}", :indent_paragraphs => 30
  pdf.text "Event Scenario Summary:", :indent_paragraphs => 30
  pdf.text "#{item.event_scenario_summary}", :spacing => 16, :indent_paragraphs => 30
  pdf.text "Statewide Event and/or MutiState Event: ", :indent_paragraphs => 30
  pdf.text "Event Participants:", :indent_paragraphs => 30
  item.eparticipants.each do |participant|
    pdf.text "• #{participant.name}", :indent_paragraphs => 42
  end
  pdf.text "Role of the State Emergency Management Program: #{item.ema_role}", :spacing => 16, :indent_paragraphs => 30
  pdf.text "Target Capabilities, Corrective Actions & Strengths:", :spacing => 16, :indent_paragraphs => 35
  item.tcls.each do |target|
    pdf.text "#{target.tcap}", :spacing => 16, :indent_paragraphs => 40
    pdf.text "Activity Level(s):", :spacing => 16, :indent_paragraphs => 40
    target.alevels.each do |activity| 
      pdf.text "• #{activity.name}", :spacing => 16, :indent_paragraphs => 47
    end
    pdf.text "Summary: #{target.summary}", :spacing => 16, :indent_paragraphs => 40
    pdf.text "Corrective Actions:", :spacing => 16, :indent_paragraphs => 40
    target.corrective_actions.each do |cas|
      pdf.text "• #{cas.name}", :spacing => 16, :indent_paragraphs => 47
    end
    pdf.text "Improvement Plan Provided: #{target.improvement_plan}", :spacing => 16, :indent_paragraphs => 40
    pdf.text "Improvement Plan Completed: #{target.improvement_plan_completed}", :spacing => 16, :indent_paragraphs => 40
  end
  pdf.text "Lessons Learned:", :spacing => 16, :size => 14, :style => :bold, :indent_paragraphs => 30
  item.learned_lessons.each do |lesson|
    pdf.text "• #{lesson.title}", :spacing => 16, :indent_paragraphs => 47
    pdf.text "• #{lesson.description}", :spacing => 16, :indent_paragraphs => 50
  end
  item.interviews.each do |interview|
    pdf.text "• #{interview.name}", :spacing => 16, :indent_paragraphs => 47
    pdf.text "#{interview.title}", :spacing => 16, :indent_paragraphs => 50
    pdf.text "#{interview.date}", :spacing => 16, :indent_paragraphs => 50
    pdf.text "#{interview.summary}", :spacing => 16, :indent_paragraphs => 50
  end
end
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
pagecount = pdf.page_count
pdf.text "Page #{pagecount}"
end
