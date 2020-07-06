=begin
Print Something (Part 1)
Write a program that asks the user whether they want the program to print "something", t
hen print it if the user enters y. Otherwise, print nothing.

Examples:

$ ruby something.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something.rb
>> Do you want me to print something? (y/n)
n

$ ruby something.rb
>> Do you want me to print something? (y/n)
help

=end

puts "Do you want this program to print 'something'? (y/n):"
user_response = gets.chomp.downcase
if user_response == "y"
  puts "something"
else
  puts nil
end

