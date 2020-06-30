## Question
When you run the following code...
```ruby
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)
```
You get the following error message..

```ruby
exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
```

Why do you get this error and how can you fix it?

## Solution

The reason for the error is because the `end` keyword for the `equal_to_four` method definition was omitted. The error can be fixed by ending the `equal_to_four` method with the `end` keyword. 

```ruby
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
```