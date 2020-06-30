## Question
What does the following error message tell you?
```ruby
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
```

## Solution

The error message implies that the wrong number of arguments was passed to the `calculate_product` method when calling it. Furthermore, 1 argument was passed to the `calculate_product` method instead of 2 arguments.