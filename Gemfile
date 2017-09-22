source 'https://rubygems.org'
ruby '2.4.0'

# Sorted alphabetically
# Standard Rails gems
gem 'bcrypt', '3.1.11'
gem 'coffee-rails', '4.2.1'
gem 'jquery-rails', '4.2.2'
gem 'rails', '4.2.8'
gem 'redis'
gem 'redis-namespace'
gem 'redis-rails'
gem 'redis-rack-cache'
gem 'sass-rails', '5.0.6'
gem 'uglifier', '3.1.6'

# Font-awesome: https://github.com/FortAwesome/font-awesome-sass
gem 'font-awesome-sass', '4.7.0'

# Custom gems for this application that are distributed for public use
def custom_gem(gem_name)
  gem gem_name, git: "https://github.com/wazery/#{gem_name}", branch: 'master'
end

# For picking lat, lon from Google Map
custom_gem 'map_picker'

# Provides Ruby wrapper for the OpenWeather API
custom_gem 'horus'

# Bootstrap 3: https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '3.3.7'

group :development, :test do
  gem 'apipie-rails'
  gem 'byebug', '9.0.6'

  # Static code analyzer
  gem 'rubocop'

  # Spring: https://github.com/rails/spring
  gem 'spring', '2.0.1'

  # Annotate_Models: https://github.com/ctran/annotate_models
  gem 'annotate', '2.7.1'
  gem 'sqlite3', '1.3.11'
end

gem 'web-console', '3.3.0', group: :development

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
end
