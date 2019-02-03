Invitation.configure do |config|
  config.user_registration_url = ->(params) { Rails.application.credentials.client[:host] }
  config.mailer_sender = Rails.application.credentials.gmail[:username]
end
