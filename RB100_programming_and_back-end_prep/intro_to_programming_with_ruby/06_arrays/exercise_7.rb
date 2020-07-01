# Use the each_with_index method to iterate through an array of your 
# creation that prints each index and value of the array.

planets = ["pluto", "earth", "mars", "jupiter", "venus"]
planets.each_with_index do |planet, idx|
  puts "#{planet.capitalize} is at index #{idx}."
end
