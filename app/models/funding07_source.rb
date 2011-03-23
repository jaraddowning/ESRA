class Funding07Source < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    source :string
    timestamps
  end

  belongs_to :program

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
