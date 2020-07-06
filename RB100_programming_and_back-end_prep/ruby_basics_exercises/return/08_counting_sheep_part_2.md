## Counting Sheep (Part 2)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
```

## Solution
The expression `puts count_sheep` will print the Integers `0, 1, 2, 3, 4, 10` each on a newline.

Within the body of the `count_sheep` method, the `Integer#times` method is invoked by the Integer `5`, and the block `puts sheep` is passed to it. This implies that the `Integer#times` method will iterate over the block `puts sheep` 5 times, passing the `Integer` values referred to by the `5.times` method call, to the block `puts sheep` on each iteration starting from the Integer `0 to 4` (which represents a 5 times count). The block parameter `|sheep|` points to each of the `Integer` values referred to by the `5.times` method call in the course of each iteration and these `Integer` values are referenced in the block `puts sheep` as the `Integer#times` method iterates over it the `Integer` times specified, `5`.

This `5.times` method call with the block `puts sheep`, that is within the `count_sheep` method, executes by printing the `Integer` values `0, 1, 2, 3, 4` and then returns the Integer `5`. But the `Integer#times` method call with the block `puts` sheep isn't the last expression within the `count_sheep` method so the value returned by the `Integer#times` method doesn't become the return value of the `count_sheep` method as no explicit `return` keyword was used.

Also within the `count_sheep` method, after the `Integer#times` method call with the block `puts sheep`, ends, there is another expression, the Integer `10`, which is the last expression in the `count_sheep` method. When this expression evaluates, the value it returns becomes the return value of the `count_sheep` method. In Ruby, the evaluated result of the last expression in a method (with or without the `return` keyword) when executed is the return value of the method if an explicit `return` keyword is not used before the last expression. Hence the last expression in the `count_sheep` method, the Integer `10`, when it evaluates returns the `Integer` value `10`. Which makes the return value of the `count_sheep` method, the Integer,`10`.

So when `#puts` is called on the `count_sheep` method invocation as seen in the expression `puts count_sheep`, the `count_sheep` method call executes first by printing the Integers `0, 1, 2, 3, 4` each on a newline after which the `count_sheep` method returns the Integer `10`, which `#puts` the expression `puts count_sheep` prints.