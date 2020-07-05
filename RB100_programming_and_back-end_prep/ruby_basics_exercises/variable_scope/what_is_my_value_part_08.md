## What's My Value? (Part 8)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```
## Solution
The expression `puts a`, will give an error: `NameError: undefined local variable or method 'a'`.

The reason for this is due to the concept of variable scope in operation within the code snippet. The concept of variable scope is the concept that local variables only exist in the context in which they are initialized. 

In the context of the code snippet, the local variable `array` is initialized in the main scope with the `Array` object `[1, 2, 3]`. Then the `Array#each` method is called on the local variable `array` followed immediately by the block `a = element` delimited by `do/end`, which denotes the block scope. Within the block scope, the local variable `a` is initialized and assigned the first element and then reassigned to other elements passed into the block from the local variable `array` one at a time on each iteration by the `Array#each` method. The last iteration reassigns and makes the local variable `a` within the block point to the `Integer` value, `3`.

The concept of variable scope follows the rule that local variables initialized in the block scope cannot be accessed in the main scope. In this case, the local variable `a` is initialized in the block scope and it cannot be accessed or referenced in the main scope. Hence, the expression `puts a` in the main scope, when executed gives an error because to the Ruby interpreter, the local variable `a` is undefined in the main scope.