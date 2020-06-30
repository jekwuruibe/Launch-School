## Question

Look at the following programs...

```ruby
x = 0
3.times do
  x += 1
end
puts x
```
and...

```ruby
y = 0
3.times do
  y += 1
  x = y
end
puts x
```

What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

## Solution

In the first code snippet, the local variable `x` prints the Integer value `3`.  
In the second code snippet, the local variable `x` gives an error. `Undefined local variable or method x`.

The reason for this is because local variables initialized in the main scope can be accessed by the local variables initialized in the block scope but not vice versa.

For the first code snippet, the local variable `x` is initialized with the Integer value `0` in the main scope and `x` is incremented by the Integer value `1` and reassigned in the block scope three times in each iteration of the `#times` method. Finally, the value which the variable `x` points to is printed out in the main scope.

In the second code snippet, the local variable `y` is initialized in the main scope with the Integer `0` and is `y` is incremented by the Integer value `1` and reassigned in the block scope three times in each   iteration of the `#times` method. Then the local variable `x` is initialized in the block scope and   assigned the value which the local variable `y` makes reference to. Because the local variable `x` is  initialized in the block scope, it cannot be accessed in the main scope.  