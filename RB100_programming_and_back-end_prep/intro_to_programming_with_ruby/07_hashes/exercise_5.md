## Question
What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

## Solution

The `Hash#has_value?` method can be used to find out if a Hash contains a specific value in it. 
```ruby
restaurant_menu = {
  salad: 500,
  fried_rice: 700,
  pounded_yam: 1000,
  beans: 400,
  roasted_fish: 1200
}

prices = [650, 700, 1500, 1000, 300, 500, 1200]

prices.each do |price|
  if restaurant_menu.has_value?(price)
    puts "A dish that costs N#{price} is on the menu!"
  else
    puts "No dish on the menu costs N#{price}."
  end
end
```
