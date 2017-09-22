CareerfoundryWeather::Application.routes.draw do
  get 'display_map', to: 'weathers#display_map', as: 'display_map'
  get 'display_weather', to: 'weathers#display_weather', as: 'display_weather'
  post 'query_for_weather', to: 'weathers#query_for_weather', as: 'query_for_weather'

  root 'weathers#display_map'
end
