=begin
Print Until
Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]
Expected output:

7
9
13
25
18
=end

# Solution 1:
numbers = [7, 9, 13, 25, 18]
index = 0  # Defining counter which serves as an index to the numbers array in the until loop

until index == numbers.length
  puts numbers[index]
  index += 1
end

# Solution 2:
numbers = [7, 9, 13, 25, 18]

until numbers.empty?  # Checks to see if numbers (array) variable is empty
  puts numbers.shift  # Keeps printing the return value of calling the Array#shift method on numbers until the numbers (array) variable is empty 
end