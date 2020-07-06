## Breakfast, Lunch, or Dinner? (Part 1)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def meal
  return 'Breakfast'
end

puts meal
```

## Solution

The code above will print the string `Breakfast`. This is because the string `"Breakfast"` is the return value of the `meal` method. The `return` keyword was used explicitly within the method body and string `"Breakfast"` was passed as the value to be returned. So when `puts` is called on the `meal` method invocation, it prints the return value of the method, `"Breakfast"`.