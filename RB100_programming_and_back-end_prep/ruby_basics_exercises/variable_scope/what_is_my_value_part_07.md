## What's My Value? (Part 7)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```
## Solution
The expression `puts a`, will print the `Integer` value, `3`.

The reason the code prints out the `Integer` value `3`, is because the concept of variable scope is at play within the code snippet. The concept of variable scope is the concept that local variables only exist in the context in which they are initialized. 

In the context of the code snippet above, the the local variable `a` is initialized in the main scope with the `Integer` value `7` and is reassigned in the block scope (which is denoted by the `Array#each` method call on the `array` variable followed immediately by the block `a = element` delimited by `do/end`).

The local variables `array` is also initialized in the main scope with the `Array` object, `[1, 2, 3]`. The `Array#each` method call on the local variable `array`, is immediately followed by the block `a = element` which implies that the local variable `a` (initialized in the main scope) is been reassigned in the block scope. The local variable `a` in the block scope is been reassigned to each element from the local variable `array` that the `Array#each` method iterates over. This implies that the `Array#each` method will iterate over each element in the local variable `array` starting from the first element to the last element in that order and the local variable `a` in the block will be reassigned to the element passed into the block in each iteration.

The concept of variable scope follows the rule that local variables initialized in the main scope can be accessed in the block scope but not vice versa. So the local variable `a` (initialized in the main scope) is accessed in the block scope and reassigned in the course of each iteration by `Array#each` method over the elements in the local variable `array`. Hence, the value which the local variable `a` points to in memory changes over the course of each iteration.

At the end of the iteration the local variable `a` in the block points to the `Integer` value, `3`, which is the last element in the local variable `array`. The local variable `a` reassigned within the block scope is then referenced in the main scope. So when the expression `puts a` is executed, it prints the `Integer` value, `3`.