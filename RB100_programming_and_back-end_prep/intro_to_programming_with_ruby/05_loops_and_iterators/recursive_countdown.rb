# Write a method that counts down to zero using recursion.

def count_down_to_zero(number)
  puts number
  number -= 1
  return if number < 0
  count_down_to_zero(number)
end

count_down_to_zero(10)
count_down_to_zero(-4)
count_down_to_zero(0)
