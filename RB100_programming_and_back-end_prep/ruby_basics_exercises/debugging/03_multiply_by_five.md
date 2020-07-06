## Multiply By Five
When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?
```ruby
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"
```

## Solution
```ruby
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"
```
The code above does not print the expected output, The result is `50!`, because the user's input retrieved by the `gets` method and assigned to the local variable `number` returns a string. The `gets` method returns a string. Hence, the user input stored in `number` is evaluated as a string when passed into the the body of the `multiply_by_five` method when it is called with `number` as an argument.

The way to fix this is to chain the `#to_i` method to the `chomp` method's call on `gets` so that the return value of the user input assigned to `number` is an `Integer`. `#to_i` converts a `String` to an `Integer`.
```ruby
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"
```