## Question
Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

## Solution

```ruby
restaurant_menu = {
  salad: 500,
  fried_rice: 700,
  pounded_yam: 1000,
  beans: 400,
  roasted_fish: 1200
}

# 1. Print keys
restaurant_menu.each do |key, value|
  puts "#{key.to_s.capitalize}"
end

# Alternatively:
restaurant_menu.each_key do |key|
  puts "#{key.to_s.capitalize}"
end

# 2. Print values
restaurant_menu.each do |key, value|
  puts value
end

# Alternatively:
restaurant_menu.each_value do |value|
  puts value
end

# 3. Print keys and values
restaurant_menu.each do |key, value|
  puts "#{key.to_s.capitalize} costs N#{value}."
end
```