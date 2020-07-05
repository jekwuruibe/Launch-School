## What's My Value? (Part 1)
What will the following code print and why? Don't run it until you have tried to answer.
```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```
## Solution
The expression `puts a`, will print the Integer value, `7`.

The reason for this is due to the concept of variable scope at play within the code snippet. The concept of variable scope implies that variables only exist in the context in which they are initialized. The local variable `a`, is initialized in the main scope with the `Integer` value `7`. So when `a` is passed as an argument into the `my_value` method, it is passed into the method scope and there is an implicit initialization of the local variable `b` within the method scope, with the value which the local variable `a` makes reference to, this is likened to the expression `b = a`, which implies that the local variable `b` within the body of the `my_value` method now points to or makes reference to the `Integer` value `7`, which the local variable `a` points to in memory.

Based on the concept of variable scope, local variables initialized within a method exist only in the context of that method (and not outside the method). Hence, the local variable `b`, pointing or making reference to the same value which the local variable `a` points to in memory is then incremented and reassigned as seen in the expression `b += 10`. Since a reassignment operation is not a mutating operation, the local variable `b` is made to point to a different `Integer` object represented by the value `17` while the local variable `a` still points to the `Integer` value `7`. That's the reason the expression `puts a` prints out the `Integer` value, `7`.