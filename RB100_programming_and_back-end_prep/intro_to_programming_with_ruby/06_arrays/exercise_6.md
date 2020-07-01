## Question
You run the following code...
```ruby
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
```
...and get the following error message:

```ruby
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
```

What is the problem and how can it be fixed?

## Solution

The problem with the code and the reason for the error is because when trying to reassign the string value `margaret` to the string value `jody`, the Element assignment method `Array#[]=` was passed the string `margaret` as an argument instead of an Integer, which should be the index of the string element `margaret` in the `names` array.

```ruby
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
```