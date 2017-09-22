# Note that 'config' is an instance of `Horus::API`
Horus.configure do |config|
  # API key
  # TODO: Move this to the secrets file
  config.api_key = Rails.application.secrets.open_weather_api_key

  # Optionals
  config.default_language = 'ar'     # 'en' by default
  config.default_country_code = 'eg' # nil by default (ISO 3166-1 alfa2)
  config.default_units = 'metric'    # 'metric' by default
end

# Horus gem to be accessible from anywhere in the app
$horus = Rails.configuration.horus
