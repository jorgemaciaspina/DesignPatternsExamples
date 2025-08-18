# Usage of Singleton Pattern in Ruby
require_relative 'logger'
# Here we demonstrate the usage of the Logger singleton class.

# Fetch the single instance of Logger
logger1 = Logger.instance
logger2 = Logger.instance

# Both logger1 and logger2 should point to the same instance
puts "Is the same object?: #{logger1.object_id == logger2.object_id}"  # This should print 'true'

# Clear the log file before starting
logger1.clear

# Log some messages
puts "Last 5 log entries before logging new messages first instance: #{logger1.read_last(5)}"
puts "Last 5 log entries before logging new messages second instance: #{logger2.read_last(5)}"
logger1.info('This is an informational message.')
logger1.info('This is an informational message.')
logger1.info('This is an informational message.')
logger2.error('This is an error message.')
puts "Last 5 log entries after logging new messages:"
puts "First instance log:"
logger1.read_last(5).each { |line| puts line }
puts "Second instance log:"
logger2.read_last(5).each { |line| puts line }