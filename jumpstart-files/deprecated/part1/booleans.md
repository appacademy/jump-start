# Booleans

Here are a few code examples illustrating the key concepts for booleans:

This first example isn't practical--it just prints a bunch of boolean values--but it lets us review comparators:
```ruby
def print_some_comparator_results
  puts 1 == 1 # true
  puts 1 < 1  # false
  puts 1 < 2  # true
  puts 1 >= 2 # false
  puts 2 >= 2 # true
  puts 2 <= 3 # true
end
```

Here's a more practical function that uses a comparator:
```ruby
# This function returns true if the input is odd.
def odd_integer?(integer)
  return integer % 2 == 1
end
```
