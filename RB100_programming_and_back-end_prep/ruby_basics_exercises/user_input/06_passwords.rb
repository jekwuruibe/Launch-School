=begin
Passwords
Write a program that displays a welcome message, but only after the user enters the correct password, 
where the password is a string that is defined as a constant in your program. 
Keep asking for the password until the user enters the correct password.

Examples:

$ ruby password.rb
>> Please enter your password:
Hello
>> Invalid password!
>> Please enter your password:
Secret
>> Invalid password!
>> Please enter your password:
SecreT
Welcome!

=end

# Solution 1:

PASSWORD = "sly126"

loop do
  puts "Please enter your password:"
  user_input = gets.chomp
  puts "Invalid password!" if user_input != PASSWORD
  break if user_input == PASSWORD
end

puts "Welcome!"

# Solution 2:

PASSWORD = "slep89"

loop do
  puts "Please enter your password:"
  user_input = gets.chomp
  if user_input == PASSWORD
    puts "Welcome!"
  else
    puts "Invalid password!"
  end
  break if user_input == PASSWORD
end