# Base application helper
module ApplicationHelper
  def title(value)
    @title = "#{value} | CareerfoundryWeather" unless value.nil?
  end
end
