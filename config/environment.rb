# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Esra::Application.initialize!

#config.autoload_paths << "#{Rails.root}/app/reports"

  ActionMailer::Base.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => 587,
    :domain => 'emaponline.com',
    :authentication => :plain,
    :user_name => 'esraemap@gmail.com',
    :password => 'EMAP8train'
  }
