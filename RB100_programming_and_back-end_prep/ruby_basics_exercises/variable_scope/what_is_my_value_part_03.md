## What's My Value? (Part 3)
What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
```
## Solution
The expression `puts a`, will print the `Integer` value, `7`.

The reason for this is because the concept of variable scope is at play within the code snippet. The concept of variable scope is the concept that local variables only exist in the context in which they are initialized. Here, the local variable `a` is initialized in the main scope and is set to point to where the Integer value, `7` is stored in memory. Also, within `my_value` method (method scope), there are two local variables `a` and `b`, with local variable `a`, set to point or make reference to the value which the local variable `b` points to in memory as seen in the expression `a = b`.

The local variable `a`, initialized within `my_value` method is different from the local variable `a` initialized in the main scope. As the local variable `a` from the main scope plus the `Integer` value `5` (i.e `a + 5`) is passed into `my_value` as an argument when calling the method, the local variable `b`, within the body of the method is implicitly initialized and set to point to the return value of (`a + 5`) i.e incrementing the value which the local variable `a` (from the main scope) references by the `Integer` value, `5`. There by making the local variable `b` within the method scope make reference to the `Integer` value,`12`.

Hence, within `my_value` method, the expression `a = b` simply initializes another local variable `a` within the method scope with the `Integer` value, `12`, which the local variable `b` makes reference to.
This makes the local variables `a` and `b` initialized in the method scope both point to / make reference to the `Integer` value, `12` within the method. While the local variable `a` (from the main scope) still points to the `Integer` value, `7`. Outside the method scope, the local variables `a` and `b` initialized within `my_value` method doesn't exist.

So, after the method call, the expression `puts a`, prints out the `Integer` value, 7, which is indicative that `a` in the expression `puts a` references the local variable `a`, initialized in the main scope.