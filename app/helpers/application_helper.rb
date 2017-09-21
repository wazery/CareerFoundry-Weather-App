# Base application helper
module ApplicationHelper
  def title(value)
    @title = "#{value} | CareerfoundryWeather" unless value.nil?
  end

  def gmap_home_thumb(options = {})
    geolocation = options[:geolocation] || '52.520199,%2013.409859'
    size        = options[:size] || '256x256'
    zoom        = options[:zoom] || '12'

    "https://maps.googleapis.com/maps/api/staticmap?center=#{geolocation}&zoom=#{zoom}&size=#{size}"
  end
end
