class Review < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    standalone :boolean
    timestamps
  end

  belongs_to :program
  has_many :findings, :dependent => :destroy

  has_many :review_assignments, :dependent => :destroy
  has_many :users, :through => :review_assignments, :accessible => true

  def after_create
    Finding.create(:name => "Review Summary", :review_id => id)
  end
  
  children :review_assignments
  children :users


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
    acting_user.administrator? || acting_user.reviewer?
  end

end
