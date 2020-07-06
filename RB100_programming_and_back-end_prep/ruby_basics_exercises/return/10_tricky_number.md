## Tricky Number
What will the following code print? Why? Don't run it until you've attempted to answer.
```ruby
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
```

## Solution
The expression `puts tricky_number` will print the Integer, `1`.

The return value of `tricky_number` method is the Integer, `1`, because in the method body there an `if/else` statement and the `if` statement is passed the boolean value, `true`. This implies that the `if` statement will always evaluate to `true` within the body of the `tricky_number` method. And when the `if` statement evaluates to `true`, the expression `number = 1` is evaluated and the return value of assigning the Integer `1` to the local variable `number` becomes the return value of the `tricky_number` method. In this case the `else` part of the conditional statement is not reached because the `if` statement always evaluates to `true`.

So when `puts` is called on the `tricky_number` method invocation, the `tricky_number` method call checks the `if` statement and if it evaluates to `true` (in this program, the `if` statement will always evaluate to `true`), the local `variable` number is initialized with the Integer `1` and the Integer `1` is returned. Hence, the Integer `1` becomes the return value of the `tricky_number` method. This return value is passed to `puts` and the Integer `1` is printed.