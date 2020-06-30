# Write a while loop that takes input from the user, performs an action, 
# and only stops when the user types "STOP". Each loop can get info from the user.

while true
  puts "How are you today? (Type STOP to end the talk):"
  response = gets.chomp
  puts response
  break if response == "STOP"
end

