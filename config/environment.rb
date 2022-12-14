# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => ENV['SENDGRID_LOGIN'],
    :password => ENV['SENDGRID_PWD'],
    :domain => 'https://mojo-coaching.fly.dev/',
    :address => 'smtp.sendgrid.net',
    :port => 465,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
