## Account Balance
Time for a check of your financial situation.

The output of the code below tells you that you have around $70. However, you expected your bank account to have about $238. What did we do wrong?
```ruby
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance
```

## Solution

The program above outputs about $70 instead of about $238 which is expected to be the account balance because the return value of the block, `calculate_balance(month)` which is a method call with each variable element in the array `[january, february, march]` passed into the block as its argument when `Array#each` method iterates through each of the elements in the array, is reassigned to the local variable `balance` in the course of each iteration.

So the value returned by the local variable `balance` is the return value of the `calculate_balance` method when `march` is passed in as an argument to it because the local variable `march` is the last element to be passed into the block in the course of the iteration.

Basically, the problem lies with the assignment operator `=` used to assign the return value of the the block, `calculate_balance(month)`, in the course of each iteration to the local variable `balance`.

To fix this the simple assignment operator `=` needs to be changed to the combined assignment operator `+=` in the piece of code, which will add the return value of the `calculate_balance(month)` method call assigned to the local variable `balance` incrementally. Hence the local variable `balance` will be incremented and the value it points to will be reassigned simultaneously through the course of the iteration by `Array#each`.
```ruby
balance = 0

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance
```