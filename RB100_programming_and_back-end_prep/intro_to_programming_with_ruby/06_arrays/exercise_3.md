## Question

How do you return the word "example" from the following array?
```ruby
arr = [["test", "hello", "world"],["example", "mem"]]
```

## Solution
```ruby
arr = [["test", "hello", "world"],["example", "mem"]]
arr[1][0]

Alternatively:
arr.last.first
```
