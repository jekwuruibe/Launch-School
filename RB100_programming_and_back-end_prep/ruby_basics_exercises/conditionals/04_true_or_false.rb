=begin
True or False
In the code below, boolean is randomly assigned as true or false.

boolean = [true, false].sample
Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.
=end

boolean = [true, false].sample
boolean == true ? (puts "I'm true!") : (puts "I'm false!")