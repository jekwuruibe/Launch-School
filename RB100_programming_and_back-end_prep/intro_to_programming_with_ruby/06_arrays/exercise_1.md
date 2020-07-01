## Question

Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
```ruby
arr = [1, 3, 5, 7, 9, 11]
number = 3
```

## Solution
```ruby
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |element|
  puts "#{number} is in the array." if element == number
end

Alternatively:

if arr.include?(number)
  puts "#{number} is in the array."
end
```