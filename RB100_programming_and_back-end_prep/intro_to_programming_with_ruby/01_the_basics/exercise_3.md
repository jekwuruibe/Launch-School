
## Question

Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

```ruby
1975
2004
2013
2001
1981
```

## Solution

```ruby
movies = {
  salvation: 1999,
  ballerina: 2015,
  zootopia: 2012,
  the_accountant: 2009,
  finding_dory: 2010,
  inside_out: 2009
}

puts movies[:salvation]
puts movies[:ballerina]
puts movies[:zootopia]
puts movies[:the_accountant]
puts movies[:finding_dory]
puts movies[:finding_dory]


Alternatively:

movies.each {|title, year| puts year}
```