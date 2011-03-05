class EmapStandard < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name     :string
    std_lang :text
    #std_num  :integer
    timestamps
  end

  #belongs_to :tcap

  # --- Permissions --- #

  def create_permitted?
    acting_user.signed_up?
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
