class CorrectiveAction < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    assigned_to :string
    completed_by :string
    completed_date :string
    reviewer_ob :html
    timestamps
  end

  #never_show :reviewer_ob

  belongs_to :tcl

  has_many :ca_docs, :dependent => :destroy, :accessible => true

  def reviewer_ob_edit_permitted?
    acting_user.reviewer? || acting_user.administrator?
  end

  def reviewer_ob_view_permitted?
    acting_user.reviewer? || acting_user.administrator?
  end

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
