## What's My Value? (Part 9)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```
## Solution
The expression, `puts a` prints the `Integer` object, `7`.

In the code snippet, the local variables `a` and `array` are initialized in the main scope and assigned the `Integer` object, `7` and the `Array` object,`[1, 2, 3]` respectively.

Then the `Array#each` method is called upon the local variable `array`, followed by the block `a += 1` delimited by `do/end`, which indicates the block scope. The `Array#each` method, iterates over each element in local variable `array` and passes the elements one at a time into the block starting from the first element to the last element. To enable each element to be passed to the block when the `Array#each` method iterates over it, immediately after `do` within the `do/end` pair, a block parameter is defined to make reference to each element passed into the block (i.e it serves as a placeholder for each element iterated over and passed into the block).

This block parameter can be named anything in this case it is named `a`. Which is completely different from the local variable `a` initialized in the main scope. The block parameter is passed to the block `a += 1` as a reference to the element `|a|` represents or makes reference to, in the local variable `array` in each iteration. The block `a += 1` performs a reassignment operation by adding the `Integer` value `1` to the `Integer` value which the block parameter `|a|` make reference to in the local variable `array` and set it to point to a new `Integer` object in memory (within the block scope). This happens for each element in the local variable `array` when `Array#each` iterates over them one after the other until the last element which results in the block parameter `|a|` pointing to the `Integer` object, `4` in memory (within the block scope).

Because `a` was passed into the block `a += 1` as a reference to the element the block parameter holds for each iteration over the elements in the local variable `array` and also serves as a local variable that points to values in memory within the block scope, the value returned by `a` within the block, will not be accessible in the main scope. Hence, the local variable `a` in the expression `puts a` references the `Integer` object,`7`, which local variable `a` in the main scope points to in memory.