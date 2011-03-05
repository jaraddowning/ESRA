# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Esra::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address => "mail.csg.org",
   :port => 25,
   :domain => "csg.org",
   :authentication => :login,
   :user_name => "emap@csg.org",
   :password => "Emap8222",
}
