
## Question

Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

## Solution

```ruby
years = [1999, 2015, 2012, 2009, 2010, 2009]

puts years[0]
puts years[1]
puts years[2]
puts years[3]
puts years[4]
puts years[5]

Alternatively:

years.each {|year| puts year}
```