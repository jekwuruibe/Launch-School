## Question
What does the each method in the following program return after it is finished executing?
```ruby
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
```

## Solution
The `#each` method returns the original array which it iterated through i.e `[1, 2, 3, 4, 5]`.