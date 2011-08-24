class Tcl < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name                         :string, :default => "TCL:"
    summary                      :html
    improvement_plan             :boolean
    improvement_plan_completed   :boolean
    timestamps
  end

  belongs_to :event
  belongs_to :tcap
  belongs_to :alevel

  #has_many :alevels, :accessible => true

  has_many :corrective_actions, :dependent => :destroy
  has_many :strengths, :dependent => :destroy, :accessible => true
  has_many :improvement_areas, :dependent => :destroy, :accessible => true
  has_many :tcl_goals, :dependent => :destroy, :accessible => true
  has_many :tcl_objectives, :dependent => :destroy, :accessible => true
  children :corrective_actions

  # --- Permissions --- #

  def create_permitted?
    acting_user.signed_up?
  end

  def update_permitted?
    acting_user.signed_up?
  end

  def destroy_permitted?
    acting_user.signed_up?
  end

  def view_permitted?(field)
    acting_user.signed_up?
  end

end
