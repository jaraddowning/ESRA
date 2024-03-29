Esra::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  #config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # File uploading capabilities - image conversion
  Paperclip.options[:command_path] = "/usr/bin/convert"

  # Email configuration for CSG Exchange Servers (requires ruby-ntlm gem)
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.default :content_type => "text/html"
  config.action_mailer.smtp_settings = {
    :address              => "mail.csg.org",
    :port                 => 25,
    :domain               => "csg.org",
    :authentication       => :ntlm,
    :user_name            => 'emap@csg.org',
    :password             => 'Emap8222',
    :enable_starttls_auto => false
  }

end

