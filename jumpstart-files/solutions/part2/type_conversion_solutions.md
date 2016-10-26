# Type Conversion Solutions

0. Define a method, `#two_digit_sum`, that accepts a two-digit integer as an argument. Your method should return the sum of the two digits.

  ```ruby
    def two_digit_sum(int)
      first_digit = int.to_s[0]
      second_digit = int.to_s[1]

      first_digit.to_i + second_digit.to_i
    end
  ```

0. Define a method, `#orders_of_magnitude`, that accepts an integer as an argument. Your method should return the number of digits in the integer.

  ```ruby
    def orders_of_magnitude(int)
      int.to_s.length
    end
  ```

0. Define a method, `#accurate_division`, that accepts two **integers** as arguments. Your method should return the quotient of the two integers (rounding to 3 decimal places).

  ```ruby
    def accurate_division(int1, int2)
      quotient = int1.to_f / int2
      quotient.round(3)
    end
  ```

0. Define a method, `#two_digit_format`, that accepts an integer, `n`, and returns a string version of that integer. If the integer has a single digit, you should append a 0. You can **assume that n will always be two or fewer digits.** Hint: try creating a string using `'0' + n.to_s`, then use `#slice` to get the last two digits!

  ```ruby
    def two_digit_format(n)
      string_number = '0' + n.to_s
      string_number[-2, 2]
    end
  ```

0. Define a method, `#time_string` that accepts 3 arguments: hours, minutes, and seconds (all integers). Convert these integers into one contiguous time string that has the following format:

  ```ruby
    "hh:mm:ss"
  ```

  Use the method, `#two_digit_format`, to help you do this!

  ```ruby
    def time_string(hours, minutes, seconds)
      hour_string = two_digit_format(hours)
      minute_string = two_digit_format(minutes)
      second_string = two_digit_format(seconds)

      "#{hour_string}:#{minute_string}:#{second_string}"
    end
  ```
