# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Esra::Application.initialize!

# Email account setup
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default :charset => "utf-8"
ActionMailer::Base.default :content_type => "text/html"
ActionMailer::Base.smtp_settings = {
  :address              => "mail.csg.org",
  :port                 => 25,
  :domain               => "csg.org",
  :authentication       => :login,
  :user_name            => 'emap@csg.org',
  :password             => 'Emap8222',
  :enable_starttls_auto => true  }
