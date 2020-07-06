## Weather Forecast
Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.
```ruby
def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
```

## Solution
```ruby
def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
```

The local variable `sunshine` within the body of the `predict_weather` method points to an array which randomly assigns either of two string elements `"true"` and `"false"` which are truthy values in conditional statements and will always evaluate to `true` when either of the strings are passed to the `if` statement. Hence, the reason `"Today's weather will be sunny!"` is printed every time the method is invoked.

To fix the code above, the elements of the array assigned to the local variable `sunshine` will have to be changed to the boolean values, `true` and `false`. In this case, when `true` is assigned to sunshine, it evaluates to `true` when passed to the `if` statement and executes `"Today's weather will be sunny!"` and when `false` is assigned to `sunshine`, it evaluates to `false` when passed to the `if` statement which will result in the execution of the expression `"Today's weather will be cloudy!"` following the `else` statement.

```ruby
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather
```