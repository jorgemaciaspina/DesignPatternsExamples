# Singleton
The singleton pattern is probably the easiest to understand, here the objective
is to just have one instance in the whole application.

The most common usecases are Loggers, Database connections, Cache, in short services that need to be
centralized is the mos basic way I can describe it.

## Example
Here we simply have a `logger` class, that is instantiated multiple times in the `app` file.

## Running the example
Simply run it with `ruby app.rb` in your terminal.

## Dependencies
This was made for `ruby 3.3.3`, however it should work with basically any recent version of ruby.