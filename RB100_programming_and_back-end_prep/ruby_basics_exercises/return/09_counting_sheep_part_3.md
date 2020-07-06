## Counting Sheep (Part 3)
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
```

## Solution
The expression `p count_sheep` will print the Integers `0, 1, 2` and `nil`.

Within the `count_sheep` method, the `Integer#times` method is invoked by the Integer `5`, as seen in `5.times` and the block which contains the expression, `puts sheep` and a conditional statement, `return if sheep >= 2` is passed to it.

This implies that the `#times` method will iterate over both the expression, `puts sheep` and the conditional statement that constitutes the block, 5 times and print the Integer values the `5.times` method call refers to (the `Integer` values starting from `0 to 4`) which is passed into the block via the block parameter `|sheep|`, subject to the expression, `return if sheep >= 2`, contained in the conditional statement of the block.

So in the course of each iteration, the `Integer` value which the `5.times` method call refers to is passed to the block starting from the Integer `0`, then the `puts sheep` expression is executed referencing the `Integer` passed into the block in that iteration by printing the `Integer` value, followed by the conditional statement `if sheep >= 2`, checking if the value passed into the block in that iteration is greater than or equal to `2`, to determine whether to execute the explicit `return` keyword used with no value passed to it. (Which simply means `return nil`, as no value was passed to the `return` keyword).

The `#times` method iteration continues until the Integer `2` is passed into the block, which results in the Integer `2` being printed and condition of the `if` statement, `if sheep >= 2` evaluating to `true`, which will bring about the execution of the `return` keyword following the `if` statement. Thereby making the execution flow / iteration of the `Integer#times` method call within the `count_sheep` method to be exited and the `count_sheep` method being exited altogether. Hence the `count_sheep` method when called prints the Integers `0, 1, 2` and returns `nil` because the explicit `return` keyword used implies that no value is to be returned (which simply translates to `nil` in Ruby).

So when the `#p` method is called on the `count_sheep` method invocation as seen in the expression `p count_sheep`, the `count_sheep` method call executes by printing the Integers `0, 1, 2` and then returns `nil` which the `#p` method prints.

The `#p` method inspects the object it prints to know what type it is. Hence the `#p` method prints `nil` as opposed to `puts` which will print an empty line when `nil` is passed to it.