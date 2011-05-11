class Tcap < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name    :string
    std_id  :integer
    timestamps
  end

  #has_many :alevels, :accessible => true
  has_many :emap_standards

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
