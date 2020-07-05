## What's My Value? (Part 6)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```
## Solution
The method call `my_value(a)` will result in an `error` and the expression, `puts a` prints the `Integer` value, `7`.

The reason for this is because a non-mutating/ non-destructive operation (i.e a reassignment operation) was performed within the body of `my_value` as seen in the expression `b = a + a`. 

The local variables `a` is initialized in the main scope with the `Integer` value, `7`. So, when `my_value` is called and the local variable `a` (from the main scope) is passed as an argument to the method, within the method scope, the local variable `b` is implicitly initialized with the `Integer` value `7`, which the local variable `a` (from the main scope) makes reference to. Thereby making both local variables `a` (from the main scope) and `b` (in the method scope) point to the same `Integer` value, `7`.

Within the body of `my_value`, the local variable `b` in the method scope is reassigned from the `Integer` value ,`7` which it points to, as seen in the expression `b = a + a`. Though the local variable `a` referenced in the expression `b = a + a` is undefined in the method scope. While the local variable `a` (initialized in the main scope) still references the `Integer` value, `7`.

As a result, the method call `my_value(a)` returns an error and the expression `puts a`, prints the `Integer` value, `7` which the local variable `a` in the main scope points to in memory.