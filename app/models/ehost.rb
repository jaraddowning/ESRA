class Ehost < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    host :string, :name => true
    timestamps
  end

  belongs_to :event

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
