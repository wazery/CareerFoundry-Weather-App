MapPicker.configure do |config|
  # config.api_key    = 'AIzaSyBhdfWaDqRCBxKAyOUqvAS3kPVoVl1QnGA'
  config.lat_column = :latitude
  config.lng_column = :longitude
  config.default_coordinates = [52.520199, 13.409859]
  #config.map_handler = 'gMapObj' #javascript map object
  #config.zoom_level = 10
  #config.map_container_class = 'map_picker_container'
  config.map_width = '750px'
  config.map_height = '500px'
end
