## Breakfast, Lunch, or Dinner? (Part 5)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
```

## Solution
The expression `p meal` will print the string `"Dinner"` and the `nil` object.

The `meal` method prints the string `"Dinner"` by reason of the expression `puts "Dinner"` in the body of the method. The expression `puts "Dinner"` is also the last expression in the body of the `meal` method and the `meal` method has no explicit `return` keyword before `puts "Dinner"`.

When the last expression in the body of the `meal` method, `puts "Dinner"` executes, it prints the string, `"Dinner"` and returns `nil`.

So, when `#p` is called on the `meal` method invocation, the `meal` method call executes by printing the string `"Dinner"` and `#p` is called on the return value of the `meal` method invocation, `nil`. Hence `nil` is being printed as well.

In Ruby, `nil` means nothing / no value. The `#p` method is used to inspect Ruby objects to see what type it is, so instead of an empty line being printed as when `puts` is called on `nil`, the `nil` value is printed when `#p` is used.