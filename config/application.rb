require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module CareerfoundryWeather
  # The Rails application
  class Application < Rails::Application
    # Didn't add them to the secrets.ymal file cause the app is not confidential
    HTTP_AUTH_USERNAME = 'cf_docs_admin'.freeze
    HTTP_AUTH_PASSWORD = 'cf@weather$app%'.freeze

    I18n.enforce_available_locales = false

    # Test framework
    config.generators.test_framework false

    config.cache_store = :redis_store, 'redis://localhost:6379/0/cache', { expires_in: 90.minutes }

    # autoload lib path
    config.autoload_paths += %W[#{config.root}/lib]
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
end
