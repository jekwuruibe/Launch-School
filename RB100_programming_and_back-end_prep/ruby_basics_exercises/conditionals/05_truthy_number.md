## Truthy Number
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end
```

## Solution
The code will print the string `"My favorite number is 7`."

This is because in Ruby, when an object or an expression other than `false` or `nil` is used in a conditional statement such as an `if` statement, it evaluates to `true`. This is referred to as truthiness.

In the case of the code above, the local variable `number` was initialized and assigned the integer `7`. And the local variable `number` was passed as a condition to an `if` statement which results in it evaluating to `true`. (Only `false` and `nil` evaluates to `false` in a conditional statement when passed in as a condition).