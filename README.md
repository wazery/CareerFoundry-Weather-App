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

While working on the application I decided to split the code into 2 gems, so I provide something to the community to be used.

The first gem is called [Horus](https://github.com/wazery/horus), which is a Ruby wrapper around the OpenWeather API, so users can grap the current weather info by either city, coordinates (latitude, longitude) or zipcode.

You can find the documentation in its GitHub repo.

The second gem is called [MapPicker](https://github.com/wazery/map_picker) which renders the Google Map, and provides an autocompletion field, so users can pick their desired country or city, or just click anywhere on the map. It gets the latitude and longitude for that picked up location.

Don't forget to use or star them ;)

# BDD

I wrote some features and step definations for the application. I used Cucumber as I used to use this awesome framework.

![Cucumber Test Output](https://i.imgur.com/ebYtFxd.png)

# TDD

I also wrote some controller tests using RSpec testing framework.
