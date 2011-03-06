class TrainingPlan < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name  :string, :unique, :required
    timestamps
  end
  
  belongs_to :program
  belongs_to :tcap

  has_many :tpriorities, :dependent => :destroy, :accessible => true
  has_many :texercises, :dependent => :destroy, :accessible => true

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
