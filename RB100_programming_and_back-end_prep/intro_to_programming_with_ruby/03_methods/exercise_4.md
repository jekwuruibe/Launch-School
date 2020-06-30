## Question
What will the following code print to the screen?
```ruby
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
```

## Solution

The method invocation with the string argument passed to it `scream("Yippeee")` will print nothing because within the body of the method an explicit `return` keyword was used before the expression `puts words` is reached. Hence, the expression `puts words` will not evaluated within the body of the `#scream` method and the `#scream` method also returns `nil`.