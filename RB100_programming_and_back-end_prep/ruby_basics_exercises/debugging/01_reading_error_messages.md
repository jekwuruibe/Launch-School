## Reading Error Messages
You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?
```ruby
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)
```

## Solution
```ruby
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
```
The code above raises an `ArgumentError`.
```ruby
exercise_1_reading_error_messages.rb:18:in `find_first_nonzero_among': wrong number of arguments (given 6, expected 1) (ArgumentError)
```
It implies that wrong number of arguments where given. `6` arguments were given to the `find_first_nonzero_among` method when calling it while the expected number of argument to the method is `1`.

The number of arguments passed to the `find_first_nonzero_among` method when calling it does not correspond to the number of parameters defined when defining the `find_first_nonzero_among` method. In the case of the method call above, six arguments `(0, 0, 1, 0, 2, 0)` were passed to the `find_first_nonzero_among` when calling the method while only one parameter was defined in the `find_first_nonzero_among` method definition. Hence only one argument is expected to be passed into the `find_first_nonzero_among` method when calling it.

```ruby
find_first_nonzero_among(1)
```
The code above raises a NoMethodError.
```ruby
exercise_1_reading_error_messages.rb:19:in `find_first_nonzero_among': undefined method `each' for 1:Integer (NoMethodError)
```
This error message implies that the method which is called on an object does not exist or is not available for that object.

In this case the Integer `1`, was passed as an argument to the `find_first_nonzero_among` method when calling it but within the body of the `find_first_nonzero_among` method, the local variable `numbers` points to the Integer `1` when the method call executes and the `#each` method is called on `numbers` which in this case points to an `Integer`. The `#each` method does not exist and is undefined for `Integers`, so a `NoMethodError` is raised.