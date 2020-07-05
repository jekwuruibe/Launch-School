## What's My Value? (Part 5)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```

## Solution
The expression `puts a`, prints the string `"Xyzzy"`.

The reason for this is because a non-mutating operation (i.e a reassignment operation), was performed within the body of `my_value` method.

The local variable `a`, is initialized with the `String` object `"Xyzzy"` in the main scope. So when `my_value` method is called and the local variable `a` (from the main scope) is passed as an argument to the method, within the method scope, the local variable `b` is implicitly initialized with the `String` value, `"Xyzzy"`, which the local variable `a` (from the main scope) makes reference to. Thereby making both local variables `a` (from the main scope) and `b` (in the method scope) point to the same `String` value, `"Xyzzy"` within the method scope. 

Within the body of `my_value`, the expression `b = 'yzzyX'` implies that the local variable `b` is been reassigned and set to point to another `String` object, `"yzzyX"` within the method scope. While the local variable `a` still refers to the `String` object, `"Xyzzy"`. Since the local variable `a` (from the main scope) still points to the `String` object, `"Xyzzy"`, the expression `puts a`, prints the `String` object, `"Xyzzy"`, which the local variable `a` references.
