=begin
User Name and Password
In the previous exercise, you wrote a program to solicit a password. In this exercise, 
you should modify the program so it also requires a user name. 
The program should solicit both the user name and the password, then validate both, 
and issue a generic error message if one or both are incorrect; the error message should not tell 
the user which item is incorrect.

Examples:

$ ruby login.rb
>> Please enter user name:
John
>> Please enter your password:
Hello
>> Authorization failed!
>> Please enter user name:
mary
>> Please enter your password:
SecreT
>> Authorization failed!
>> Please enter user name:
admin
>> Please enter your password:
root
>> Authorization failed!
>> Please enter user name:
admin
>> Please enter your password:
SecreT
Welcome!
=end

# Solution 1:

USER_NAME = "jancebe"
PASSWORD = "Snog287"

loop do
  puts "Please enter your user name:"
  user_name = gets.chomp
  puts "Please enter your password:"
  password = gets.chomp
  if user_name == USER_NAME && password == PASSWORD
    puts "Welcome! #{user_name.capitalize}."
  else
    puts "Authorization failed!"
  end
  break if user_name == USER_NAME && password == PASSWORD
end

# Solution 2:

USER_NAME = "cindearl"
PASSWORD = "nkeM1268"

loop do
  puts "Please enter your user name:"
  user_name = gets.chomp
  puts "Please enter your password:"
  password = gets.chomp
  puts "Authorization failed!" if user_name != USER_NAME || password != PASSWORD
  break if user_name == USER_NAME && password == PASSWORD
end

puts "Welcome! #{USER_NAME.capitalize}."