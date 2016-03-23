# Implicit and Explicit Returns

The code example below makes use of both implicit and explicit returns to determine whether a number is a power of 2 (`2`, `4`, `8`, `16`, ... `2**n`).

For all powers of two, we should be able to divide them in half over and over and eventually get one. This function takes a number and keeps dividing it in half until it reaches one. If the function gets to an odd number before reaching one, it knows right away that it is not a power of two, so it uses an explicit return to stop the function and return false.

```ruby
# This function takes an integer input and returns whether it's a power of two.
def silly_power_of_two?(number)

  while number > 1
    if number % 2 == 1        # return false if the number is not evenly
      return false            # divisible by two.
    end

    number /= 2               # divide the number by two.
  end

  number == 1                 # implicitly return the result of the comparator
end
```
