# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.default_options = { from: "ryan@catalyze.io" }
ActionMailer::Base.default :charset => "utf-8"
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    user_name: ENV["USERNAME"],
    password: ENV["PASSWORD"],
    domain: 'catalyze.io',
    address: 'smtp.mailgun.org',
    port: 587,
    authentication: :login,
    enable_starttls_auto: true
}
