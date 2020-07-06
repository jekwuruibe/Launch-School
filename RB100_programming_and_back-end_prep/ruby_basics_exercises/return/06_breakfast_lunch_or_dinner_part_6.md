## Breakfast, Lunch, or Dinner? (Part 6)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
```
## Solution
The expression `puts meal` will print the string `"Breakfast"`.

The expression, `puts meal` prints the return value of the `meal` method, `"Breakfast"`. In the body of the `meal` method the `return` keyword was used with the string `"Breakfast"`, which is the first expression in the method body. The implication of this is that the string `"Breakfast"` is returned by the `meal` method immediately the expression is evaluated because of the explicit `return` keyword used with it. Immediately the string, `"Breakfast"` is returned, the execution flow exits the body of the method, as a result, the other expressions in the method body are not reached and executed by the program.

So when `puts` is called on the `meal` method invocation, the `meal` method call returns the string `"Breakfast"` and `puts` prints the return value of the `meal` method, `"Breakfast"`.