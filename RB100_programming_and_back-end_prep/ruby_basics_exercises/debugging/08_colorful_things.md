## Colorful Things
The following code throws an error. Find out what is wrong and think about how you would fix it.
```ruby
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
```

## Solution
In the code above, the reason an error is raised is because of the condition passed to the `if` statement following the `break` keyword, which did not take into consideration the differences in length of (or number of elements in) the arrays which the  local variable `colors` and local variable `things` points to respectively.

The local variable `i`, being placed in the element reference method `Array#[]` within the loop serves as an index reference for the local variables `colors` and `things` in order to to access the elements in the arrays they point to respectively.

So when the local variable `i`, increments above the maximum positive index value which references the last element in the array the local variable `things` points to, the next index value referenced in `things` returns a `nil` and the `nil` object cannot be concatenated with strings.

Hence, the expression following the `else` statement, `puts 'And a ' + colors[i] + ' ' + things[i] + '.'` in that particular iteration of the loop raises an error : `no implicit conversion of nil into String (TypeError)`, as a result, which breaks the execution flow of the code within the loop.

A possible way to fix this is to change the condition of the `if` statement passed to the `break` keyword so that it breaks if `i > (things.length - 1)`
```ruby
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!  
things.shuffle!  

i = 0
loop do
  break if i > (things.length - 1)

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
```