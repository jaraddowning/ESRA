class CorrectiveAction < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    assigned_to :string
    completed_by :string
    completed_date :date
    reviewer_ob :html
    timestamps
  end

  belongs_to :tcl

  has_many :ca_docs, :dependent => :destroy, :accessible => true

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
