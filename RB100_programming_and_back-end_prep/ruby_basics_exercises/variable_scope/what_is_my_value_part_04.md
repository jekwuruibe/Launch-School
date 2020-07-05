## What's My Value? (Part 4)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```
## Solution
The code will print, `"Xy-zy"`.

The reason for this is because of the mutating / destructive operation that took place within the body of `my_value` method. The local variable `a`, was initialized in the main scope and set to point to where the `String` value, `"Xyzzy"` is stored in memory.

So when `my_value` is called and the local variable `a` from the main scope is passed as an argument to the method, the local variable `b` within the method scope is initialized and set to point to or make reference to the `String` value `"Xyzzy"` which the local variable `a` points to in memory. Hence, both local variables `a` (from the main scope) and `b` (from the method scope) point to the same value (i.e the `String` object, `"Xyzzy"`) in memory, within the method scope.

As a result, within the body of `my_value`, the expression `b[2] = "-"` , implies that a mutating / destructive operation is being performed within the string, `"Xyzzy"`, where the character at index `2` (i.e the first `z` character), within `"Xyzzy"` is reassigned to the string `"-"`. Since both variables `a` (from the main scope) and `b` (in the method scope), make reference to the same `String` value, `"Xyzzy"`, in the method scope, when the mutating / destructive character reassignment operation is performed, the string `"Xyzzy"` is mutated to `"Xy-zy"`. The implication of this is that, the local variable `a` in the main scope is mutated.

That's the reason the expression `puts a`, prints the string `"Xy-zy"`.