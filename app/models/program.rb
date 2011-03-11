class Program < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name                 :string, :required, :unique
    program_jurisdiction :string, :required, :unique
    program_street       :string, :required
    program_city         :string, :required
    program_zip          :string, :required
    program_contact      :string, :required
    contact_title        :string
    contact_phone        :string, :required
    contact_mobile       :string
    contact_email        :string, :required
    summary              :html
    continuous_ca_plan   :boolean
    proc_for_devel       :boolean
    ca_tracked           :boolean
    ca_summary           :html
    ca_resolved          :html
    timestamps
  end

  belongs_to :owner, :class_name => "User", :creator => true
  belongs_to :program_state, :class_name => "State"

  has_many :events, :dependent => :destroy
  has_many :training_plans, :dependent => :destroy
  has_many :disdecs, :dependent => :destroy
  has_many :hiras, :dependent => :destroy
  has_many :eecas, :dependent => :destroy
  has_many :uploads, :dependent => :destroy

  children :events, :training_plans, :eecas

  # --- Permissions --- #

  def create_permitted?
    acting_user.signed_up?
  end

  def update_permitted?
    acting_user.signed_up?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    acting_user.administrator? || owner_is?(acting_user)

  end

end
