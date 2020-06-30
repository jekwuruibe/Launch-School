puts "Please type a number between 0 and 100:"
number = gets.to_i

if number < 0
  puts "#{number} is not valid! Input a positive number."
elsif number >= 0 && number <= 50
  puts "#{number} is between 0 and 50."
elsif number > 50 && number <= 100
  puts "#{number} is between 51 and 100."
else
  puts "#{number} is above 100."
end