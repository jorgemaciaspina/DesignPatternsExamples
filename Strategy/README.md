# Strategy
The strategy pattern is a very simple one, and in my view, is the implementation of another patterns, you basically change the "algorithm" dinamically.

Some common usecases are sorting, payments, data compression, etc.

## Example
Here we simply have a `payment process`, we decide what `process` to execute, based on the payment type, this is done in the `app` file, note that we implement the same `pay` method in each payment method, to be able to use the same call, just changing the paymenth method.

## Running the example
Simply run it with `ruby app.rb` in your terminal.

## Dependencies
This was made for `ruby 3.3.3`, however it should work with basically any recent version of ruby.