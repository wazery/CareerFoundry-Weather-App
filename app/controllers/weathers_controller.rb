# Controller for the main application endpoints
# User renders the action display_map map when visiting the root url
# then after selecting a location on map or by autocomplete, a query on
# OpenWeather API is issued, to get the weather data for that location
# then a card is shown at right displaying the weather data
class WeathersController < ApplicationController
  # GET /display_map
  def display_map
  end

  # POST /query_for_weather
  # TODO: Implement and fix Redis caching
  def query_for_weather
    weather = get_weather_from_cache(params)

    if weather.nil?
      # begin
        byebug
        weather = issue_query(params)
        byebug
        $redis.set("#{params[:latitude]},#{params[:longitude]}", weather.to_json)
        # Expire the cache, every 3 hours
        $redis.expire('weathers', 3.hour.to_i)
        redirect_to display_weather_path(weather: weather), notice: 'Weather was successfully retrived.'
      # rescue Exception
        # redirect_to root_path, alert: "Can't get the weather for this location!"
      # end
    else
      redirect_to display_weather_path(weather: weather), notice: 'Weather was successfully retrived.'
    end
  end

  # GET /display_weather
  def display_weather
    @weather = params[:weather]
  end

  private

  def issue_query(params)
    # Using Horus Ruby wrapper to query OpenWeather API
    response = $horus.current(lat: params[:latitude], lon: params[:longitude])
    set_weather(response)
  end

  def get_weather_from_cache(params)
    byebug
    JSON.load($redis.get("#{params[:latitude]},#{params[:longitude]}"))
  end

  def set_weather(response)
    weather = {
      place_name: response[:name],
      latitude: response[:coord][:lat],
      longitude: response[:coord][:lon],
      temp_min: response[:main][:temp_min],
      temp_max: response[:main][:temp_max],
      humidity: response[:main][:humidity],
      pressure: response[:main][:pressure],
      wind_speed: response[:wind][:speed],
      sunrise: response[:sys][:sunrise],
      sunset: response[:sys][:sunset],
    }
  end
end
