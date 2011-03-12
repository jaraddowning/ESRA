class Tcl < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name                         :string, :required
    summary                      :html
    improvement_plan             :boolean
    improvement_plan_completed   :boolean
    timestamps
  end
  
  belongs_to :event

  has_many :tcap_tcls, :dependent => :destroy, :accessible => true

  has_many :strengths, :dependent => :destroy, :accessible => true
  has_many :corrective_actions, :dependent => :destroy, :accessible => true
  has_many :improvement_areas, :dependent => :destroy, :accessible => true

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
    true
  end

end
