class Review < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    standalone :boolean
    timestamps
  end

  belongs_to :program

  has_many :review_assignments, :dependent => :destroy
  has_many :reviewers, :through => :review_assignments, :source => :user, :accessible => true

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
    acting_user.administrator?
  end

end
