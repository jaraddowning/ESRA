logopath = "#{RAILS_ROOT}/public/images/emap_logo.jpg"
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

Emergency management requires the cooperation and collaboration of all organizations having a role in response and recovery. Your cooperation and efforts demonstrate the level of leadership and commitment required for the continual professionalization of emergency management to ensure our collective ability to protect the citizens we serve.
    
Sincerely, 


 
Nicole M. Ishmael
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
pdf.bounding_box([pdf.bounds.left + 30,pdf.bounds.top - 98], :width => 100, :height => 55) do
pdf.text "#{@program.program_jurisdiction}"
pdf.text "#{@program.program_street}"
pdf.text "#{@program.program_city}, #{@program.program_state}"
pdf.text "#{@program.program_zip}"
end
pdf.move_down(8)
pdf.text " ESR Contact:", :size => 12, :style => :bold, :spacing => 4
pdf.bounding_box([pdf.bounds.left + 30,pdf.bounds.top - 178], :width => 100, :height => 65) do
pdf.text "#{@program.program_contact}"
pdf.text "#{@program.contact_title}"
pdf.text "#{@program.contact_phone}"
pdf.text "#{@program.contact_mobile}"
pdf.text "#{@program.contact_email}"
end
pdf.move_down(12)
pdf.text "B.	ESR Team", :size => 14, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "Mrs. Christine Y. Jacobs, EMAP Projects Coordinator
Mr. Mark Howard, Arizona Div. of Emergency Management 
Mr. John Berzins, South Carolina Emergency Management Division
Mrs. Nancy Freeman, Retired, Nassau (FL) County Emergency Management"
pdf.move_down(10)
pdf.text "C.	ESR Methodology", :size => 14, :style => :bold, :spacing => 4
pdf.move_down(10)
pdf.text "As this was an “integrated” pilot, an additional EMAP Reviewer was incorporated into the Assessor Team assembled for an existing scheduled baseline assessment. The process followed many of the same components of the proven peer-review process used by EMAP. The Program was given an opportunity to complete a Self-review, submit supportive documentation and complete an On-site Review prior to the arrival of the Assessor Team. 
 
The program completed an internal self review against pilot methodology and EMAP Standards. The On-site Review was conducted by an EMAP liaison, which provided pilot guidance and direct observation for measuring ESR pilot delivery; monitored progress and outcomes; and coordinated the activities of three (3) independent trained reviewers from outside the pilot program."
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
pdf.text "IV.	Exercise Review Findings", :size => 14, :style => :bold, :spacing => 5
pdf.move_down(10)

  @program.events.each do |item|
    pdf.text "Event: #{item.event_name}", :size => 13, :style => :bold, :spacing => 5, :indent_paragraphs => 15
    pdf.move_down(8)
    pdf.text "Event Start Date: #{item.event_date.strftime("%d %b %y")}", :indent_paragraphs => 30
    pdf.text "Event End Date: #{item.event_end_date.strftime("%d %b %y")}", :indent_paragraphs => 30
    pdf.text "Event Duration: #{item.event_duration}", :indent_paragraphs => 30
    pdf.text "Event Host: #{item.event_host}", :indent_paragraphs => 30
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
    pdf.text "Event Scenario Summary:", :indent_paragraphs => 30
    pdf.text "#{item.event_scenario_summary}", :spacing => 16, :indent_paragraphs => 30, :indent_paragraphs => 35
    pdf.text "Event Location(s)/Site(s): ", :indent_paragraphs => 30
  end
 
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
pagecount = pdf.page_count
pdf.text "Page #{pagecount}"
end
