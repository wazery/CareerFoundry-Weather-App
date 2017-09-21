require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module CareerfoundryWeather
  # The Rails application
  class Application < Rails::Application
    # turn off warnings triggered by friendly_id
    I18n.enforce_available_locales = false

    # Test framework
    config.generators.test_framework false

    # autoload lib path
    config.autoload_paths += %W[#{config.root}/lib]
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
end
