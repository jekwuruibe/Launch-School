## Even Numbers
We want to iterate through the `numbers` array and return a new array containing only the even numbers. However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?
```ruby
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]
```
## Solution
```ruby
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers
```
The code above iterates through the local variable `numbers` using `Array#map`, which returns a new array of the same length as the original array based on the return value of invoking the block on each element in the array. `Array#map` is not a suitable method to use to get the expected output.

To fix the code above, `Array#select` will be used to iterate through `numbers` array. `Array#select` returns a new array that contains elements of the original array for which the block evaluates to `true` in the course of iterating through the array.
```ruby
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers
```