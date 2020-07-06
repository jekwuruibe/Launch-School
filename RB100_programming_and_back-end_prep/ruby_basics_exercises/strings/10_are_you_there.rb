=begin
Are You There?
Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. 
Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'
Expected output:

true
false
=end

colors = "blue pink yellow orange"

colors_array = colors.split(" ")

if colors_array.include?("yellow")
  puts true
else
  puts false
end

if colors_array.include?("purple")
  puts true
else
  puts false
end

# Alternatively:

colors_array.include?("yellow") ? puts(true) : puts(false)
colors_array.include?("purple") ? puts(true) : puts(false)