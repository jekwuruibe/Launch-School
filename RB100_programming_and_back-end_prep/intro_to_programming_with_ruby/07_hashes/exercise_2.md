## Question

Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

## Solution

The `Hash#merge` method returns a new hash that combines the contents of the `Hash` object on which it is called and contents of the `Hash` object passed as an argument to the `#merge` method when calling it. Hence `#merge` does not mutate the caller.

```ruby
restaurant_menu = {
  salad: 500,
  fried_rice: 700,
  pounded_yam: 1000
}

new_dishes = {
  beans: 400,
  roasted_fish: 1200
}

updated_menu = restaurant_menu.merge(new_dishes)

p updated_menu
{:salad=>500, :fried_rice=>700, :pounded_yam=>1000, :beans=>400, :roasted_fish=>1200}
p restaurant_menu
{:salad=>500, :fried_rice=>700, :pounded_yam=>1000}
```

The `Hash#merge!` method adds the content of the `Hash` object passed as an argument to it to the content of the `Hash` object on which it is called. A new hash is not returned rather it's a modified hash that is returned. Hence `#merge!` mutate the caller.

```ruby
restaurant_menu = {
  salad: 500,
  fried_rice: 700,
  pounded_yam: 1000
}

new_dishes = {
  beans: 400,
  roasted_fish: 1200
}

updated_menu = restaurant_menu.merge!(new_dishes)

p updated_menu
{:salad=>500, :fried_rice=>700, :pounded_yam=>1000, :beans=>400, :roasted_fish=>1200}
p restaurant_menu
{:salad=>500, :fried_rice=>700, :pounded_yam=>1000, :beans=>400, :roasted_fish=>1200}
```