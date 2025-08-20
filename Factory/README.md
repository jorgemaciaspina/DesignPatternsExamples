# Factory
The factory pattern is a pretty straight forward pattern. Basicale you have a central object/class that is responsible for the creation of different kinds of objects that are "children" of another class (usually an interface).

The most common usecases are Loggers, Database connectors, Serialization, among others.

An easy way to know if you need this approach in my experience is to check if you need to create objects dinamically and if you think in the future you may need to support additional classes, the best example I can think of right now: Imagine your project needs to support database connections, but each db needs it's own "connector", you could do a Factory to create the connector object according to the db (postgres, mysql, mssql, etc.), now you can get a connector compatible with your database.

## Example
Here we simply have some `shaps` classes, we create the shapes according to it's name.

## Running the example
Simply run it with `ruby app.rb` in your terminal.

## Dependencies
This was made for `ruby 3.3.3`, however it should work with basically any recent version of ruby.