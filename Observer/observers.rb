# !frozen_string_literal: true
 
# This is an example of an Observer pattern implementation in this case it prints to the console
class ConsoleObserver
  def update(data)
    puts "Weather data updated: #{data}"
  end
end

# This class represents an Observer that writes weather data to a file.
class FileObserver
  def update(data)
    File.open("weather_data.txt", "a") do |file|
      file.puts("Weather data updated: #{data}")
    end
  end
end