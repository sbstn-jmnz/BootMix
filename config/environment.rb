# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
config.action_mailer.default_url_options = { :host => 'fast-everglades-4393.herokuapp.com' }