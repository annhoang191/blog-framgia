require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module BlogFramgia
  class Application < Rails::Application
    config.load_defaults 5.1
  end
end
