# !frozen_string_literal: true

require_relative 'weather_station'
require_relative 'observers'

# We initialize all the objects.
station = WeatherStation.new
console_observer = ConsoleObserver.new
file_observer = FileObserver.new

# We add observers to the weather station.
station.add_observer(console_observer)
station.add_observer(file_observer)

# Simulate weather data updates.
[1,2,3].each do |temp|
  station.set_weather_data(temp)
  sleep(3) # Simulate time delay between updates
end
