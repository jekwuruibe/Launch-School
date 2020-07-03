## Question
What will the following program print to the screen? What will it return?
```ruby
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
```

## Solution

The program will not print anything. Because the block was not called using the `#call` method within the body of the `execute` method. And the program will return a `Proc` object.