Devise.setup do |config|
  config.mailer_sender = "please-change-me-at-config-initializers-devise@example.com"
  require "devise/orm/active_record"

  config.case_insensitive_keys = [:email]
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.reconfirmable = true
  config.reset_password_within = 6.hours
  config.scoped_views = true
  config.sign_out_via = :delete
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.strip_whitespace_keys = [:email]
  config.secret_key = '6fcef955c0e7f82fc48078b25364066ca21b2ecf2ca62ee59b5b54b9cdf319b10635405bb8f35e6f0e683502b90476c6779385f7c79fbc72a6369f14d7be8670'
end
