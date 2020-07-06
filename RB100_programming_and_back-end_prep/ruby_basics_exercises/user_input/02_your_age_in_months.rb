=begin
Your Age in Months
Write a program that asks the user for their age in years, and then converts that age to months.

Examples:

$ ruby age.rb
>> What is your age in years?
35
You are 420 months old.
=end

puts "Please type a number that represents your age in years:"
age_in_years = gets.chomp.to_i
age_in_months = age_in_years * 12
puts "You are #{age_in_months} months old."