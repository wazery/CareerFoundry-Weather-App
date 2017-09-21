FROM ruby:2.4.0
MAINTAINER Islam Wazery <wazery@ubuntu.com>

ENV HOME /home/rails/app

# Install PgSQL dependecies and JS engine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR $HOME

# Install gems
ADD Gemfile* $HOME/
RUN bundle install

# Add the app code
Add . $HOME

# Defailt command
ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server", "--binding", "0.0.0.0", "-e", "production"]
