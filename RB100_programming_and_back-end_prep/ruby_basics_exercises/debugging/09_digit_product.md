## Digit Product
Given a `String` of digits, our `digit_product` method should return the product of all digits in the `String` argument. You've been asked to implement this method without using `reduce` or `inject`.

When testing the method, you are surprised by a return value of `0`. What's wrong with this code and how can you fix it?
```ruby
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 0

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
```

## Solution
The `digit_product` method outputs the Integer `0` because within the `digit_product` method the local variable `product` was initialized with the Integer `0`. When the Integer `0` is multiplied by another `Integer` it will always return the Integer `0`.

In this case the `Array#each` method is called on the local variable `digits` and each element in the array which the local variable `digits` points to is iterated through and passed into the block, `product *= digit`, which multiplies each digit passed into the block with the local variable `product` which was initialized with the Integer `0` and reassigns the value the local variable `product` points to. But in this case, the local variable `product` points to the Integer `0`, throughout the course of the iteration.

Hence when the local variable `product` which is the last expression in the `digit_product` method, evaluates, it returns the Integer `0`.

To fix this, the local variable `product` within the `digit_product` method needs to be initialized with the Integer `1`, which when multiplied by another `Integer` will return the value of the `Integer` it is multiplied with.
```ruby
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')
```