# Break and Next


`break` and `next` give us some flexibility when using looping constructs. Both `break` and `next` skip over the rest of the code within an iteration of a loop. `next` will then continue running the loop, starting with the next element in the collection, while `break` stops the loop completely.

Here's a code example that uses both `break` and `next`.
```ruby
# This function takes an array of numbers that are all greater than or equal to
# zero. It then returns the smallest number.
def smallest_nonnegative_number(numbers)
  current_smallest = numbers.first

  numbers.each do |number|
    if number > current_smallest  # If the number is bigger than the current
      next                        # smallest number, skip to the next number
    end

    current_smallest = number     # Update the current_smallest

    if current_smallest == 0      # 0 is the smallest possible non-negative
      break                       # number, so if we find a 0, break out of the
    end                           # loop.
  end

  current_smallest
end

some_positive_numbers = [7, 4, 0, 5, 1]             # => [7, 4, 0, 5, 1]
smallest_nonnegative_number(some_positive_numbers)  # => 0
```
