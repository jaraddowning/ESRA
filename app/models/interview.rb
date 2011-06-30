class Interview < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name      :string, :required
    title     :string
    date      :date
    summary   :html
    timestamps
  end

  belongs_to :program
  belongs_to :finding

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || acting_user.reviewer?
  end

  def update_permitted?
    acting_user.administrator? || acting_user.reviewer?
  end

  def destroy_permitted?
    acting_user.administrator? || acting_user.reviewer?
  end

  def view_permitted?(field)
    acting_user.administrator? || acting_user.reviewer?
  end

end
