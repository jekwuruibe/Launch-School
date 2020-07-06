=begin
Control the Loop
Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end

=end

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1  # The counter used to increment the variable iterations within the loop
  break if iterations > 5  # The condition to be met before the loop can be exited
end