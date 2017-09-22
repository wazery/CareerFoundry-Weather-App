# Base application helper
module ApplicationHelper
  def title(value)
    @title = "#{value} | CareerfoundryWeather" unless value.nil?
  end

  def gmap_home_thumb(options = {})
    loc     = "#{options[:latitude]},#{options[:longitude]}" || '52.520199,13.409859'
    api_key = options[:api_key] || Rails.application.secrets.gmap_static_maps_api_key
    size    = options[:size] || '256x256'
    zoom    = options[:zoom] || '12'

    "https://maps.googleapis.com/maps/api/staticmap?center=#{loc}&zoom=#{zoom}&size=#{size}&key=#{api_key}"
  end

  def page_state(path)
    current_page?(path) ? 'active' : ''
  end
end
