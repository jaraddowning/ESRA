class Upload < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name  :string, :unique, :required
    timestamps
  end

  belongs_to :event
  belongs_to :program
  belongs_to :disdec
  belongs_to :owner, :class_name => "User", :creator => true

  has_attached_file :proof

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
