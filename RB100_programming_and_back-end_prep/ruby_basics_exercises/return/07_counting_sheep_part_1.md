## Counting Sheep (Part 1)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep
```

## Solution
The expression `puts count_sheep` will print the Integers `0, 1, 2, 3, 4, 5` each on a newline.

Within the body of the `count_sheep` method, the `Integer#times` method is called on the `Integer` value, `5` and the block `puts sheep` is passed to it. This implies that the `Integer#times` method will iterate over the block `puts sheep` 5 times, passing in the `Integer` values `0 to 4` (Which makes up a 5 times count/iteration) to the block `puts sheep`.

The `Integer#times` method passes in values to the block starting from `0` to `Integer - 1`, based on the `Integer` value that invokes the `Integer#times` method. The local variable `sheep` in the block `puts sheep` makes reference to the block parameter `|sheep|`, which points to the `Integer` values `0 to 4`, passed into the block in the course of each iteration by reason of the `Integer#times` method invocation on the Integer `5` as seen in `5.times`.

Also, the `Integer#times` method returns the `Integer` that invokes it and in the case of the `count_sheep` method the `Integer` returned after the `Integer#times` method call with the block executes is the Integer `5`.

So when `#puts` is called on the `count_sheep` method invocation, the `count_sheep` method call executes first by printing the `Integer` values `0, 1, 2, 3, 4` , with each `Integer` printed on a newline and then returns the `Integer` value, `5` which the `#puts` method prints.

The `puts count_sheep` expression prints the return value of the `count_sheep` method, `Integer` value `5`, after the `count_sheep` method prints the `Integer` values `0, 1, 2, 3, 4` each on a newline.