=begin
Loopception
The code below is an example of a nested loop. Both loops currently loop infinitely. 
Modify the code so each loop stops after the first iteration.

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
  end
end

puts 'This is outside all loops.'
=end

loop do
  puts "This is the outer loop."

  loop do
    puts "This is the inner loop."
    break  # Exits the inner loop (The inner loop is exited first)
  end
  break   # Exits the outer loop (The outer loop is exited after the inner loop)
end

puts "This is outside all loops."