=begin
Say Hello
Modify the code below so "Hello!" is printed 5 times.

say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end

=end

# Solution 1:
say_hello = true
times = 1    # Defining a counter variable times for the while loop

while say_hello
  puts "Hello!"
  times += 1   # Incrementing the counter variable times within the while loop
  break if times > 5  # The condition (times > 5) to be met before the while loop is exited. 
end

# Solution 2:
say_hello = true

while say_hello
  5.times {puts "Hello!"}  # The times method will print "Hello!" 5 times.
  say_hello = false
end