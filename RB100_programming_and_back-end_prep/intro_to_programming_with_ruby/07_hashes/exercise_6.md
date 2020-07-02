## Question
Given the following code...
```ruby
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
```

What's the difference between the two hashes that were created?

## Solution

The first hash variable `my_hash` was initialized with a hash that contains the `Symbol` object `:x` as the key and the `String` object `"some value` as the value. 

The second hash variable `my_hash2` was initailized with a hash that contains the local variable `x`, which points to the `String` object `"hi there"` as the key and the `String` object `"some value"` as the value.