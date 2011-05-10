class Admin::ReviewsController < Admin::AdminSiteController

  hobo_model_controller

  auto_actions :all

  def edit
    hobo_show do
       @ru = User.reviewer(true)
       @reviewusers = @ru.to_a
    end
  end

end
