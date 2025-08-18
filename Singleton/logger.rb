# This is a simple implementation of the Singleton design pattern in Ruby.
# Here we define a Logger class that ensures only one instance of the logger exists throughout the application.
class Logger
  # Here we save the instance of the Logger class in a class variable.
  @@instance = nil

  # Prevent calling 'new' directly to create multiple instances.
  private_class_method :new

  # This method returns the single instance of the Logger class.
  def self.instance
    @@instance ||= new
  end

  # We initialize the logger with a log file.
  def initialize
    @log_file = File.open('application.log', 'a')
  end

  # Info method to log informational messages.
  def info(message)
    log('INFO', message)
  end

  # Error method to log error messages.
  def error(message)
    log('ERROR', message)
  end

  # Read last n lines from the log file.
  def read_last(n)
    @log_file.close
    lines = File.readlines('application.log').last(n)
    @log_file = File.open('application.log', 'a')
    lines
  end

  # Empty the log file.
  def clear
    @log_file.close
    File.open('application.log', 'w') {} # Truncate the file
    @log_file = File.open('application.log', 'a')
  end

  private
  # Private method to write messages to the log file.
  def log(level, message)
    timestamp = Time.now.strftime('%Y-%m-%d %H:%M:%S')
    @log_file.puts("[#{timestamp}] [#{level}]: #{message}")
    @log_file.flush
  end
end