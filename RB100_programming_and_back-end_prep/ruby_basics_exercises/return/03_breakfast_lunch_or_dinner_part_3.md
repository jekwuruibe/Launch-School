## Breakfast, Lunch, or Dinner? (Part 3)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
```

## Solution

The code above will print the string `"Breakfast"`. Because, the return value of the `meal` method is the string `"Breakfast"`. In Ruby, the evaluated result of the last expression in a method body becomes the return value of the method except the `return` keyword is used before the last expression in the body of the method. 

In this case, the last expression in the body of the `meal` method is the string `"Dinner"` but the expression that comes before it, the string `"Breakfast"` has the `return` keyword assigned to it. Which immediately returns the string `"Breakfast"` and exits the `meal` method without executing the last expression, `"Dinner"`. Hence, the return value of the `meal` method is the string `"Breakfast"`. So when `puts` is called on the `meal` method invocation, it prints the return value of the method, `"Breakfast"`.