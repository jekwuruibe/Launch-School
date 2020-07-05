## What's My Value? (Part 10)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```
## Solution
The expression `puts a` will print the `Integer` object, `7`.

This is as a result of the concept of variable scope in operation within the code snippet. The concept of variable scope is the concept that local variables only exist in the context in which they are initialized. In the code snippet, the local variables `a` and `array` are initialized in the main scope and assigned the `Integer` object, `7` and the `Array` object, `[1, 2, 3]` respectively.

The definition of `my_value` method, which takes a parameter `ary`, creates the method scope in the code. The `Array#each` method call on `ary` followed immediately by the block `a += b` delimited by `do/end` which is nested within `my_value` method, creates the block scope. This implies that the block scope is nested in the method scope. In the block scope, the block `a += b` returns an error because the local variable `a` was not initialized in that scope even though the block `a += b` is an expression with a reassignment operation. (A local variable must first be initialized and assigned a value before reassignment can take place otherwise it will return an error because the local variable is undefined).

The local variable `a` reassigned in the block `a += b` does not have access to the local variable `a` initialized in the main scope because based on the concept of variable scope, local variables initialized outside a method cannot be accessed or referenced inside the method unless a parameter is defined when defining the method and the local variable is passed as an argument (if it references an approriate object for the parameter defined by the method) when calling the method. In this case no parameter was defined to enable the local variable `a`(initialized in the main scope) access into `my_value` method when it is called.

Based on the structure of the code, whatever value the expression in the block returns, that same value will be returned by `my_value` method when it is called. In this case, the method call `my_value(array)` will return an error because the value returned to `my_value` method from the block `a += b` is an error by reason of the local variable `a` in the block expression being undefined.

Hence, local variable `a` in the expression `puts a`, references the `Integer` object, `7`, which the local variable `a` in the main scope points to in memory.