## Question

Challenge: Given the array...
```ruby
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
```

Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
```ruby
["demo", "dome", "mode"]
["neon", "none"]
(etc)
```

## Solution
```ruby
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram_builder = {}

words.each do |word|
  subject = word.chars.sort.join
  if anagram_builder.has_key?(subject)
    anagram_builder[subject] << word
  else
    anagram_builder[subject] = [word] 
  end
end

anagram_builder.each_value do |value|
  p value
end
```