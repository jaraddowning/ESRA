class Finding < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name           :string
    summary        :html
    recommendation :html
    timestamps
  end

  belongs_to :review
  
  has_many :interviews, :accessible => true

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || acting_user.reviewer?
  end

  def update_permitted?
    acting_user.administrator? || acting_user.reviewer?
  end

  def destroy_permitted?
    false
  end

  def view_permitted?(field)
    acting_user.administrator? || acting_user.reviewer?
  end

end
