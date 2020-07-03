## Question

Why does the following code...
```ruby
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
```
Give us the following error when we run it?
```ruby
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
```

## Solution
The reason for the error is because the ampersand notaion `&` was omitted when defining `block` as a parameter to the `execute` method.

```ruby
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
```