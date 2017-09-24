source 'https://rubygems.org'
ruby '2.4.0'

# Sorted alphabetically
# Standard Rails gems, using only what is needed
gem 'actionview',    '~>4.2.5'
gem 'activesupport',  '~> 4.2.5' # All things we like
gem 'apipie-rails'
gem 'bcrypt', '3.1.11'
gem 'coffee-rails', '4.2.1'
gem 'sprockets', '>= 3.0.0'
gem 'jquery-rails', '4.2.2'
gem 'redis'
gem 'redis-namespace'
gem 'redis-rack-cache'
gem 'redis-rails'
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

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug', '9.0.6'

  # Static code analyzer
  gem 'rubocop'

  # Spring: https://github.com/rails/spring
  gem 'spring', '2.0.1'

  # Annotate_Models: https://github.com/ctran/annotate_models
  gem 'annotate', '2.7.1'
end

gem 'web-console', '3.3.0', group: :development

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end
