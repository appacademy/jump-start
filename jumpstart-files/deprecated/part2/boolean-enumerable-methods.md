# Boolean Enumerable Methods

`Enumerable#any?` will return true if the block evaluates to true for any element in the collection. As soon as an element makes the block return true, `#any?` will return true without checking the remaining elements.
```ruby
# This function takes an array of numbers, returning true if any
# of them is evenly divisible by two.
def any_even?(numbers)
  numbers.any? do |number|
    number % 2 == 0
  end
end

any_even?([1, 2, 3]) # => true
any_even?([1, 3, 5]) # => false
```

`Enumerable#all?` will return true if the block evaluates to true for every element in the collection. As soon as an element makes the block return false, `#all?` will return false without checking the remaining elements.
```ruby
# This function takes an array of numbers, returning true if all
# of them are zero or greater.
def all_positive?(numbers)
  numbers.all? do |number|
    number >= 0
  end
end

all_positive?([0, -1, 1]) # => false
all_positive?([1, 0, 11]) # => true
```

`Enumerable#none?` will return true if the block evaluates to false for every element in the collection. As soon as an element makes the block return true, `#none?` will return false without checking the remaining elements.
```ruby
# This function takes an array of numbers, returning true if none
# of them is less than zero.
def all_positive?(numbers)
  numbers.none? do |number|
    number < 0
  end
end

all_positive?([0, -1, 1]) # => false
all_positive?([1, 0, 11]) # => true
```

**Note** These methods give us a lot of flexibility to craft very readable conditions. If your condition is confusing, think about whether using a different boolean method would make it clearer.
