# CareerFoundry Weather App

![Application](https://i.imgur.com/fslhAjX.png)

In this application you can:

1. Search for any country or city you want
2. Select from the auto completion the desired country or city
3. Click on the `Get Weather` button
4. See the weather in the right info card

# Demo Link

I deployed the application to Heroku. By the way I've created a Dockerfile in case we wanted to deploy into any containerized environment.

https://cf-weather-app.herokuapp.com

# Seperated Gems

While working on the application I decided to split the code into 2 gems, so I can provide something back to the community.

The first gem is called [Horus](https://github.com/wazery/horus), which is a Ruby wrapper around the OpenWeather API, so users can grap the current weather info by either city, coordinates (latitude, longitude) or zipcode.

You can find the documentation in its GitHub repo.

The second gem is called [MapPicker](https://github.com/wazery/map_picker) which renders the Google Map, and provides an autocompletion field, so users can pick their desired country or city, or just click anywhere on the map. It gets the latitude and longitude for that picked up location.

Don't forget to use or star them ;)

# Minimal Configuration and Setup

In this app we don't need to save to a database, so I removed the ActiveRecord module. We also don't send emails, so I just used the Rails modules that the app needs (ActionView, ActionController, Sprockets). You can check the `Gemfile` and the `config/application.rb` for this setup.

# BDD

I wrote some features and step definations for the application. I used Cucumber as I used to use this awesome framework.

![Cucumber Test Output](https://i.imgur.com/ebYtFxd.png)

# TDD

I also wrote some controller tests using RSpec testing framework.

![RSpec Test Output](https://i.imgur.com/iFMDTV6.png)

# Deployment

I thought of getting a VPS on DigitalOccean and deploy a Kubernetes cluster and provide a dashboard access for it, just to get my hands in more DevOps in this task, then I thought it would be an overkill, so I deployed the app to Heroku.

For the health monitoring, error reporting, auto scalling, and service discovery Kubernetes would do a very well job especially if it's used with Grafana and a timeseries database, so we can have a central place for our logs. I am thinking of this infrastructure for CF actually.

Also I would think of having a CI/CD server setup, for our code review process, and automatic deployments.

Using a SAAS like NewRelic would be good also for knowing the bottlenecks of our codebase performence.

# Secrets

I kept all the secret tokens and API keys in the `config/secrets.yml`, which is not included in the repo. I will send it via email, just in case you want to run the application locally.

# Code Style

I added the awesome static analyzer `Rubocop`, to make the code aligned with the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide), I tried to make the code aligned to it, but there are some minor errors that I thought not to spend time on them, as the idea is delivered of being aligned to the Ruby style guide in most of the code base.
