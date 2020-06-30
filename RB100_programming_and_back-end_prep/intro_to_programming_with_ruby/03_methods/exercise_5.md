## Question
1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

## Solution

```ruby
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
```

The method `#scream` returns `nil`.