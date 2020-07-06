## Breakfast, Lunch, or Dinner? (Part 2)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def meal
  'Evening'
end

puts meal
```

## Solution

The code above will print the string `"Evening"`. This is because the return value of the `meal` method is the string `"Evening"`. In Ruby, the evaluated result of the last expression in a method body becomes the return value of the method, if an explicit `return` keyword isn't used before the last expression in the body of the method. So when `puts` is called on the `meal` method invocation, it prints the return value of the method, `"Evening"`.