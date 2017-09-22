Apipie.configure do |config|
  config.app_name                = 'CarrerFoundry Weather App'
  config.api_base_url            = ''
  config.app_info                = 'API documentation for the CF Weather App'
  config.copyright               = 'All copyrights are reserved for CF'
  config.doc_base_url            = '/docs'
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/*.rb"

  config.authenticate            = proc do
    authenticate_or_request_with_http_basic do |username, password|
      [username, password] == [CareerfoundryWeather::Application::HTTP_AUTH_USERNAME, CareerfoundryWeather::Application::HTTP_AUTH_PASSWORD]
    end
  end
end
