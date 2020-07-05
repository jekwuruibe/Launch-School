## What's My Value? (Part 2)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
```
## Solution
The expression `puts a`, prints out the `Integer` value, `7`.

The reason for this is because the concept of variable scope is at play within the code snippet. The concept of variable scope simply implies that local variables only exist in the context in which they are initialized. The local variable `a`, initialized in the main scope points to where the `Integer` value, `7` is stored in memory. This local variable `a` initialized in the main scope is different from the local variable `a` initialized within the body of the `my_value` method because the local variable `a` (initialized within the body of `my_value` method) only exist within the scope of `my_value` method.

It's important to note that variables are simply labels for pointing to data and local variables initialized in different scopes are completely different local variables even if their names are similar. So when the local variable `a` (initialized in the main scope) is passed into the `my_value` method as an argument when calling it, the implication is that the local variable `a` (within the body of `my_value` method) is initialized and set to point to the `Integer` value, `7` which the local variable `a` (initialized in the main scope) makes reference to or points to in memory. With an implicit expression like so, `a = a`. But this exists or is valid only within the scope of `my_value` method. The local variable `a` (initialized within the `my_value` method) cannot be referenced outside the method and doesn't exist outside `my_value` method.

Also within the body of `my_value`, the local variable `a` initialized in the method scope is then incremented and reassigned as seen in the expression `a += 10`. Since a reassignment operation is not a mutating operation, the local variable `a` (initialized within the method scope) is made to point to a different `Integer` object represented by the value `17` while the local variable `a` (initialized in the main scope and passed as an argument to `my_value`) still points to the `Integer` value `7`.

Hence, the local variable `a` (initialized in the main scope) when referenced as seen in the expression `puts a`, prints out the `Integer` value, `7`.