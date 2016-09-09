# Type Conversion Exercises

0. Define a method, `#two_digit_sum`, that accepts a two-digit integer as an argument. Your method should return the sum of the two digits.

  ```ruby
    two_digit_sum(34) == 7 # ==> 3 + 4 == 7
  ```

0. Define a method, `#orders_of_magnitude`, that accepts an integer as an argument. Your method should return the number of digits in the integer.

  ```ruby
    orders_of_magnitude(99) == 2
    orders_of_magnitude(1034) == 4
  ```

0. Define a method, `#accurate_division`, that accepts two **integers** as arguments. Your method should return the quotient of the two integers (rounding to 3 decimal places).

  ```ruby
    accurate_division(3, 4) == 0.750
    accurate_division(1, 3) == 0.333
    accurate_division(7, 6) == 1.167
  ```

0. Define a method, `#two_digit_format`, that accepts an integer, `n`, and returns a string version of that integer. If the integer has a single digit, you should append a 0. You can assume that n will always be two or fewer digits. Hint: try creating a string using `'0' + n.to_s`, then use `#slice` to get the last two digits!

  ```ruby
    two_digit_format(8) == "08"
    two_digit_format(12) == "12"
  ```

0. Define a method, `#time_string` that accepts 3 arguments: hours, minutes, and seconds (all integers). Convert these integers into one contiguous time string that has the following format:

  ```ruby
    "hh:mm:ss"
  ```

  Use the method, `#two_digit_format`, to help you do this!

  ```ruby
    time_string(12, 1, 3) == "12:01:03"
    time_string(1, 10, 6) == "01:10:06"
  ```
