# frozen_string_literal: true

Clearance.configure do |config|
  config.mailer_sender = "no-reply@pumpspot.onrender.com"
  config.rotate_csrf_on_sign_in = true
end
