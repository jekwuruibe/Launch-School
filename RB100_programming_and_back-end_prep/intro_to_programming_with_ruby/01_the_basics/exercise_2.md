
## Question

Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

## Solution

```ruby
thousands = 7482 / 1000  
hundreds = 7482 / 100 % 10  
tens = 7482 / 10 % 10  
one = 7482 % 10
```