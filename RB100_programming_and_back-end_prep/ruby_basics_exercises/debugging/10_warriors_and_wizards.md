## Warriors and Wizards
We started writing an RPG game, but we already run into an error message. Find the problem and fix it.
```ruby
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player
```

## Solution
There are two issues to fix in the code;

First, the expression `gets.chomp.downcase` with which the local variable `input` was initialized will return a string. But the object which the local variable `input` is designed to make reference to within the program is a `Symbol`. To address this the `String` returned will have be converted to a `Symbol` and the `Symbol#to_sym` method can be used for this purpose. Hence it will be chained to the `String#downcase` method like so: `gets.chomp.downcase.to_sym`.

Also, within the program, the expression `player.merge(character_classes[input])` in which the `Hash#merge` method is invoked with an argument on the local variable `player`. The `Hash#merge` method returns a new hash which adds the contents of the given hashes to the receiver but does not mutate the caller, in this case the local variable `player`. So when the `#puts` method is called on `player` it prints out the value with which the local variable `player` was initialized.

To address this the `Hash#merge!` method can be used in place of `Hash#merge`, which will result in the local variable `player` being mutated and reflect the character value upgrade in the output.

Another way to address this is to assign the expression `player.merge(character_classes[input])` to the local variable `player` like so; `player = player.merge(character_classes[input])`. This will reassign the object which the local variable `player` points to.

```ruby
player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player
```