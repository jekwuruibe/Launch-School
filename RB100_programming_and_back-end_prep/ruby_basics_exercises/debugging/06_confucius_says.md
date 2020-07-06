## Confucius Says
You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message: `no implicit conversion of nil into String (TypeError)`. What is the problem and how can you fix it?
```ruby
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
```

## Solution
```ruby
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
```
In the above code, the body of `get_quote` method contains multiple `if` statements, which implies that when an argument is passed to the `get_quote` method when calling it, that argument is passed into the body of the method and the local variable `person` within the `get_quote` method points to the value passed in as an argument. And the condition for each of the `if` statements in `get_quote` evaluates to check `if` the value the local variable `person` points to is equivalent to the given string.

Because multiple `if` statements are used within `get_quote` method, without an explicit `return` keyword in the branch of each `if` statement, each of the `if` statements are evaluated but nothing gets returned even if the local variable `person` comparison evaluates to `true` in the conditions of earlier `if` statements until the argument passed in and assigned to the `person` variable is evaluated in the condition of the last `if` statement. If the condition of the last `if` statement evaluates to `true`, the branch following that `if` statement which is the last evaluated expression within the `get_quote` method becomes the return value otherwise if it evaluates to `false`, `nil` is returned.

Hence, the return value of the `get_quote("Confucius")` method call is `nil`. So, when `get_quote("Confucius")` is called and concatenated with strings as seen in the expression `'"' + get_quote('Confucius') + '"'`, an error is raised: `no implicit conversion of nil into String (TypeError)`, because `nil` is returned by that method call and the `nil` object cannot be concatenated with strings.

To fix this, within the body of the `get_quote` method, the multiple `if` statements will have to be replaced with an `if/elsif` statement to ensure that only one branch following either the `if` or `elsif` statements is returned if the condition that comes after any of the statements evaluates to `true`.
```ruby
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
```