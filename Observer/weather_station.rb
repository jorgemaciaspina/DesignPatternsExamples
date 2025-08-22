# !frozen_string_literal: true

# This class represents a weather station that can notify observers
# about changes in weather data. Observers can subscribe to receive updates
# when the weather data changes.
class WeatherStation
  
  # Initializes a new WeatherStation instance.
  # It starts with an empty list of observers and no temperature data.
  def initialize
    @observers = []
    @temperature = nil
  end

  # Adds an observer to the list of observers.
  def add_observer(observer)
    @observers << observer
  end

  # Removes an observer from the list of observers.
  def remove_observer(observer)
    @observers.delete(observer)
  end

  # Sets the weather data and notifies all observers.
  def set_weather_data(data)
    notify_observers(data)
  end

  private

  # Notifies all observers with the provided data.
  def notify_observers(data)
    @observers.each { |observer| observer.update(data) }
  end
end