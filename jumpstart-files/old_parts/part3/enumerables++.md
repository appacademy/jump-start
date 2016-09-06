# Enumerables++

Here's an example that uses `count` with a block to get the number of elements that meet a criteria:
```ruby
# This function takes an array of integers and returns the number of them
# that exceed 85.
def number_of_high_scoring_students(class_percentages)
  class_percentages.count do |percentage|
    percentage > 85
  end
end
number_of_high_scoring_students([55, 100, 35, 75, 90]) # => 2
```

Here's an example that uses `select` and a block to filter an array:
```ruby
# This function takes a paragraph of text as a string and returns an array of
# all the four letter words.
def four_letter_words(paragraph)
  paragraph.split.select do |word|
    word.length == 4
  end
end
marc_antony = "Friends, Romans, countrymen, lend me your ears"
four_letter_words(marc_antony) # => ["lend", "your", "ears"]
```

Here's an example using `reject`, returning the items cause the block to return false.
```ruby
# This function takes a hash in the form { item => quantity }, returning
# an array of the items with a quantity of three or less.
def shopping_list(pantry)
  pantry.reject { |item, quantity| quantity > 3 }.keys
end
my_pantry = {"eggs" => 12, "pies" => 1, "rice" => 3}
shopping_list(my_pantry) # => ["pies", "rice"]
```

This example shows `reduce`, which passes the return value from the previous iteration into the next iteration as the variable `sum`
```ruby
# This function takes an array of numbers and returns the mean (average).
# Note: the average is obtained using integer division.
def average_percentage(class_percentages)
  scores_sum = class_percentages.reduce do |sum, percentage|
    sum + percentage                  # The return value of this block
  end                                 # becomes the sum for the next iteration.

  scores_sum / class_percentages.length
end
average_percentage([55, 100, 35, 75, 90])  # => 71
```

This function uses `max_by` to find the item which causes the block to return the highest value.
```ruby
# This function takes an array of numbers and returns the number that would
# be farthest from +5 on a number line.
def farthest_from_five(numbers)
  numbers.max_by do |number|
    (number - 5).abs
  end
end
farthest_from_five([-4, -6, 0, 6, 12])  # => -6
```
