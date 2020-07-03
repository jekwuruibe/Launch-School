## Question

Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

- "laboratory"
- "experiment"
- "Pans Labyrinth"
- "elaborate"
- "polar bear"

## Solution
```ruby
words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each do |word|
  word =~ /lab/ ? puts("'lab' exists in #{word}.") : puts("'lab' does not exist in #{word}.")
end

Alternatively:

words.each do |word|
  /lab/.match(word) ? puts("'lab' exists in #{word}.") : puts("'lab' does not exist in #{word}.")
end
```